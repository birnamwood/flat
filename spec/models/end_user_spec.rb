require 'rails_helper'

RSpec.describe EndUser, type: :model do

  describe 'アソシエーション' do
    it "Postモデルを多数持っている" do
      is_expected.to have_many(:posts)
    end
  end

  describe 'バリデーション' do

    it 'nameが空だとNG' do
      @user = FactoryBot.build(:end_user)
      @user.name = ''
      expect(@user.valid?).to eq(false)
    end

    it 'emailが空だとNG' do
      @user = FactoryBot.build(:end_user)
      @user.email = ''
      expect(@user.valid?).to eq(false)
    end
  end

  describe '保存時のチェック' do
    context "保存できる場合" do
      it "画像データなし" do
      end
    end

    context "保存できない場合" do
      it "nameが空欄" do
        expect(FactoryBot.build(:end_user, :no_name)).to_not be_valid
      end

      it "nameが21文字以上" do
        expect(FactoryBot.build(:end_user, :too_long_name)).to_not be_valid
      end
    end

  end

end