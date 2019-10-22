require 'rails_helper'

RSpec.feature "Postコントローラ関連", type: :feature do
  let(:region) {FactoryBot.create(:region)}
  let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
  let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}
  before do
    @user1 = FactoryBot.create(:end_user, prefecture_id: prefecture.id, municipality_id: municipality.id)
    @user2 = FactoryBot.create(:end_user, prefecture_id: prefecture.id, municipality_id: municipality.id)
    @post1 = FactoryBot.create(:post, :create_with_images, end_user_id: @user1.id, prefecture_id: prefecture.id, municipality_id: municipality.id)
    @post2 = FactoryBot.create(:post, :create_with_images, end_user_id: @user2.id, prefecture_id: prefecture.id, municipality_id: municipality.id)
  end

  feature "ログインしていない状態で" do
    feature "以下のページへアクセスした際のリダイレクト先の確認" do
      scenario "postの編集ページにアクセスできない" do
        visit edit_post_path(@post1)
        expect(page).to have_current_path new_end_user_session_path
      end
      scenario "postの投稿ページにアクセスできない" do
        visit new_post_path
        expect(page).to have_current_path new_end_user_session_path
      end
    end
  end

  feature "ログインした状態で" do
    before do
      login(@user1)
    end
    feature "表示内容とリンクの確認" do
      scenario "自分のpost詳細ページでの表示内容とリンクは正しいか" do
        visit post_path(@post1)
        expect(page).to have_link "",href: edit_post_path(@post1)
        expect(all("a[data-method='delete']")[-1][:href]).to eq(post_path(@post1)) #削除ボタン
        expect(page).to have_link @user1.nickname,href: end_user_path(@user1)
        expect(page).to have_content @post1.post_name
        expect(page).to have_content @post1.body

      end
      scenario "他人のpost詳細ページでの表示内容とリンクは正しいか" do
        visit post_path(@post2)
        expect(page).to_not have_link "",href: edit_post_path(@post2)
        expect(all("a[data-method='delete']")[-1][:href]).to_not eq(post_path(@post2)) #削除ボタン
        expect(page).to have_link @user2.nickname,href: end_user_path(@user2)
        expect(page).to have_content @post2.post_name
        expect(page).to have_content @post2.body
      end

    end
  end

end