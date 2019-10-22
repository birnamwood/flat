require 'rails_helper'

RSpec.feature "EndUserに関するテスト", type: :feature do
  let(:region) {FactoryBot.create(:region)}
  let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
  let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}
  before do
    @user1 = FactoryBot.create(:end_user, :create_with_posts, prefecture_id: prefecture.id, municipality_id: municipality.id)
    @user2 = FactoryBot.create(:end_user, :create_with_posts, prefecture_id: prefecture.id, municipality_id: municipality.id)
  end
  feature "ログインしていない状態で" do
    feature "以下のページへアクセスした際のリダイレクト先の確認" do
      scenario "userの編集ページ" do
        visit edit_end_user_path(@user1)
        expect(page).to have_current_path new_end_user_session_path
      end
    end
  end

  feature "ログインした状態で" do
    before do
      login(@user1)
    end
    feature "表示内容とリンクの確認" do
      scenario "自分の詳細ページの表示内容とリンク" do
        visit end_user_path(@user1)
        expect(page).to have_content @user1.nickname
        expect(page).to have_link "",href: edit_end_user_path(@user1)
        expect(page).to have_link "",href: following_end_user_path(@user1)
        expect(page).to have_link "",href: followers_end_user_path(@user1)
        expect(page).to have_link "",href: "/relationships"
        expect(page).to have_link "",href: relationship_path(@user1)
        expect(page).to have_selector "img"

        @user1.posts.each do |post|
          expect(page).to have_link post.post_name,href: post_path(post)
        end
      end

      scenario "自分の詳細ページでno-imageの画像が表示されているか" do
        visit end_user_path(@user1)
        expect(page).to have_selector "img"
      end

      scenario "他人の詳細ページの表示内容とリンク" do
        visit end_user_path(@user2)
        expect(page).to have_content @user2.nickname

        @user2.posts.each do |post|
          expect(page).to have_link post.post_name,href: post_path(post)
        end
      end
    end

    feature "自分のプロフィールの更新" do
      before do
        visit edit_end_user_path(@user1)
        find_field('end_user[name]').set('updated_name')
        find_field('end_user[nickname]').set('updated_nickname')
        find("input[name='commit']").click
      end
      scenario "userが更新されているか" do
        expect(page).to have_content "updated_name"
        expect(page).to have_content "updated_nickname"
        expect(User.find(1).profile_image_id).to be_truthy
      end
      scenario "リダイレクト先は正しいか" do
        expect(page).to have_current_path end_user_path(@user1)
      end
      scenario "サクセスメッセージが表示されるか" do
        expect(page).to have_content "ユーザー情報を更新しました。"
      end
    end

    feature "他人のプロフィールの更新" do
      scenario "ページへアクセスできず、マイページにリダイレクトされるか" do
        visit edit_end_user_path(@user2)
        expect(page).to have_current_path end_user_path(@user1)
      end
    end

    feature "有効ではない内容のuserの更新" do
      before do
        visit edit_user_path(@user1)
        find_field('user[name]').set(nil)
        find("input[name='commit']").click
      end
      scenario "リダイレクト先が正しいか" do
        expect(page).to have_current_path user_path(@user1)
      end
      scenario "エラーメッセージが表示されるか" do
        expect(page).to have_content "error"
      end
    end
  end
end
