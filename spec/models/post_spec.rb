require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'アソシエーション' do
    it "Prefectureモデルに属している" do
      is_expected.to belong_to(:prefecture)
    end
    it "Municipalityモデルに属している" do
      is_expected.to belong_to(:municipality)
    end
    it "EndUserモデルに属している" do
      is_expected.to belong_to(:end_user)
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
    it "Post_imageモデルを多数持っている" do
      is_expected.to have_many(:post_images)
    end
    it "Post_tagモデルを多数持っている" do
      is_expected.to have_many(:post_tags)
    end
  end

  describe '保存時のバリデーションチェック' do
    context "保存できる場合" do
      let(:region) {FactoryBot.create(:region)}
      let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
      let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}
      let(:end_user) {FactoryBot.create(:end_user, prefecture_id: prefecture.id, municipality_id: municipality.id)}

      it "動画あり" do
        expect(FactoryBot.create(:post, :create_with_movie, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to be_valid
      end
      it "動画なし" do
        expect(FactoryBot.create(:post, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to be_valid
      end
      it "画像あり" do
        expect(FactoryBot.create(:post, :create_with_images, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to be_valid
      end
      it "画像なし" do
        expect(FactoryBot.create(:post, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to be_valid
      end
      # post_name
      it "post_nameが1文字" do
        expect(FactoryBot.create(:post, :length_1_post_name, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to be_valid
      end
      it "post_nameが50文字" do
        expect(FactoryBot.create(:post, :length_50_post_name, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to be_valid
      end
    end

    context "保存できない場合" do
      let(:region) {FactoryBot.create(:region)}
      let(:prefecture) {FactoryBot.create(:prefecture, region_id: region.id)}
      let(:municipality) {FactoryBot.create(:municipality, prefecture_id: prefecture.id)}
      let(:end_user) {FactoryBot.create(:end_user, prefecture_id: prefecture.id, municipality_id: municipality.id)}
      it "post_nameが空欄" do
        expect(FactoryBot.build(:post, :no_post_name, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to_not be_valid
      end
      it "post_nameが51文字以上" do
        expect(FactoryBot.build(:post, :too_long_post_name, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to_not be_valid
      end
      it "bodyが空欄" do
        expect(FactoryBot.build(:post, :no_body, prefecture_id: prefecture.id, municipality_id: municipality.id, end_user_id: end_user.id)).to_not be_valid
      end
      it "prefecture_idが選択されていない" do
        expect(FactoryBot.build(:post, prefecture_id: "", municipality_id: municipality.id, end_user_id: end_user.id)).to_not be_valid
      end
      it "municipality_idが選択されていない" do
        expect(FactoryBot.build(:post, prefecture_id: prefecture.id, municipality_id: "", end_user_id: end_user.id)).to_not be_valid
      end
    end

  end
end