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

end