require 'rails_helper'
# config.active_support.deprecation = :silenceをconfigのtest.rbに付け加える必要がある
RSpec.feature "Homeページ、サインアップ、ログイン、ログアウトに関するテスト", type: :feature do
  let(:region) {FactoryBot.create(:region)}
  let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
  let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}
  before do
    @user = FactoryBot.create(:end_user, :create_with_posts, prefecture_id: prefecture.id, municipality_id: municipality.id)
  end

  feature "サインアップの確認" do
    before do
      visit new_end_user_registration_path
      find_field('end_user[name]').set("name_a")
      find_field('end_user[nickname]').set("nickname_a")
      find_field('end_user[email]').set("aa@aa.com")
      select('北海道', from: 'end_user[prefecture_id]')
      select('札幌市', from: 'end_user[municipality_id]')
      find_field('end_user[password]').set("pppppp")
      find_field('end_user[password_confirmation]').set("pppppp")
    end

    scenario "正しくサインアップできているか" do
      expect {
        find("input[name='commit']").click
      }.to change(EndUser, :count).by(1)
    end
    scenario "リダイレクト先は正しいか" do
      find("input[name='commit']").click
      expect(page).to have_current_path root_path
    end
    scenario "サクセスメッセージは正しく表示されるか" do
      find("input[name='commit']").click
      expect(page).to have_content "サインアップしました。"
    end
  end

  feature "有効でない内容でのサインアップの確認" do
    before do
      visit new_end_user_registration_path
      find_field('end_user[name]').set(nil)
      find_field('end_user[nickname]').set(nil)
      find_field('end_user[email]').set("bb@bb")
      select('北海道', from: 'end_user[prefecture_id]')
      # select('札幌市', from: 'end_user[municipality_id]')
      find_field('end_user[password]').set("pppppp")
      find_field('end_user[password_confirmation]').set("pppppp")
      find("input[name='commit']").click
    end
    scenario "リダイレクト先は正しいか" do
      expect(page).to have_current_path "/end_users"
    end
    scenario "エラーメッセージは正しく表示されるか" do
      expect(page).to have_content "エラー"
    end
  end

  feature "ログインの確認" do
    before do
      visit new_end_user_session_path
      find_field('end_user[email]').set(@user.email)
      find_field('end_user[password]').set(@user.password)
      find("input[name='commit']").click
    end
    scenario "正しくログインして、リダイレクトされているか" do
      expect(page).to have_current_path root_path
    end
    scenario "サクセスメッセージは正しく表示されるか" do
      expect(page).to have_content "ログインしました"
    end
  end

  feature "有効でない内容でのログインの確認" do
    before do
      visit new_end_user_session_path
      find_field('end_user[email]').set(nil)
      find_field('end_user[password]').set(nil)
      find("input[name='commit']").click
    end
    scenario "リダイレクト先は正しいか" do
      expect(page).to have_current_path new_end_user_session_path
    end
  end

  feature "ログアウトの確認" do
    before do
      login(@user)
      visit end_user_path(@user)
      all("a[data-method='delete'][href='/end_users/sign_out']")[0].click
     # click_on "logout"
    end
    scenario "正しくログアウトして、リダイレクトされているか" do
      expect(page).to have_current_path "/"
    end
    scenario "サクセスメッセージは正しく表示されるか" do
      expect(page).to have_content "ログアウトしました"
    end
  end

  feature "ヘッダーのリンクの確認" do
    scenario "ログイン時" do
      login(@user)
      visit root_path
      expect(page).to have_link "",href: root_path
      expect(page).to have_link "",href: rankings_path
      expect(page).to have_link "",href: clip_path(@user)
      expect(page).to have_link "",href: visit_path(@user)
      expect(page).to have_link "",href: new_post_path
      expect(page).to have_link "",href: end_user_path(@user)
      expect(page).to have_link "",href: destroy_end_user_session_path
    end
    scenario "ログアウト時" do
      visit root_path
      expect(page).to have_link "",href: root_path
      expect(page).to have_link "",href: rankings_path
      expect(page).to have_link "",href: new_end_user_session_path
      expect(page).to have_link "",href: new_end_user_registration_path
    end
  end
end

