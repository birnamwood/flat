require 'rails_helper'

RSpec.describe EndUser, type: :model do

  describe 'アソシエーション' do
    it "Prefectureモデルに属している" do
      is_expected.to belong_to(:prefecture)
    end
    it "Municipalityモデルに属している" do
      is_expected.to belong_to(:municipality)
    end
    it "Postモデルを多数持っている" do
      is_expected.to have_many(:posts)
    end
    it "Commentモデルを多数持っている" do
      is_expected.to have_many(:comments)
    end
    it "Visitモデルを多数持っている" do
      is_expected.to have_many(:visits)
    end
    it "Clipモデルを多数持っている" do
      is_expected.to have_many(:clips)
    end
    it "Inquiryモデルを多数持っている" do
      is_expected.to have_many(:inquiries)
    end
  end

  describe '保存時のバリデーション' do
    context "保存できる場合" do
      let(:region) {FactoryBot.create(:region)}
      let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
      let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}

      it "画像データなし" do
        expect(FactoryBot.create(:end_user, prefecture_id: prefecture.id, municipality_id: municipality.id)).to be_valid
      end
      it "画像データあり" do
        expect(FactoryBot.create(:end_user, :create_with_image, prefecture_id: prefecture.id, municipality_id: municipality.id)).to be_valid
      end
      # name
      it "nameが1文字" do
        expect(FactoryBot.create(:end_user, :length_1_name, prefecture_id: prefecture.id, municipality_id: municipality.id)).to be_valid
      end
      it "nameが30文字" do
        expect(FactoryBot.create(:end_user, :length_30_name, prefecture_id: prefecture.id, municipality_id: municipality.id)).to be_valid
      end
      it "nicknameが1文字" do
        expect(FactoryBot.create(:end_user, :length_1_nickname, prefecture_id: prefecture.id, municipality_id: municipality.id)).to be_valid
      end
      it "nicknameが30文字" do
        expect(FactoryBot.create(:end_user, :length_30_nickname, prefecture_id: prefecture.id, municipality_id: municipality.id)).to be_valid
      end
    end

    context "保存できない場合" do
      let(:region) {FactoryBot.create(:region)}
      let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
      let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}
      it "nameが空欄" do
        expect(FactoryBot.build(:end_user, :no_name, prefecture_id: prefecture.id, municipality_id: municipality.id)).to_not be_valid
      end
      it "nameが31文字以上" do
        expect(FactoryBot.build(:end_user, :too_long_name, prefecture_id: prefecture.id, municipality_id: municipality.id)).to_not be_valid
      end
      # nickname
      it "nicknameが空欄" do
        expect(FactoryBot.build(:end_user, :no_nickname, prefecture_id: prefecture.id, municipality_id: municipality.id)).to_not be_valid
      end
      it "nicknameが31文字以上" do
        expect(FactoryBot.build(:end_user, :too_long_nickname, prefecture_id: prefecture.id, municipality_id: municipality.id)).to_not be_valid
      end
      it "prefecture_id" do
        expect(FactoryBot.build(:end_user, :too_long_nickname, prefecture_id: "", municipality_id: municipality.id)).to_not be_valid
      end
      it "municipality_id" do
        expect(FactoryBot.build(:end_user, :too_long_nickname, prefecture_id: prefecture.id, municipality_id: "")).to_not be_valid
      end
    end
  end

end