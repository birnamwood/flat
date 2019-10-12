class Post < ApplicationRecord

  belongs_to :prefecture
  belongs_to :municipality
  belongs_to :end_user

  has_many :visits, dependent: :destroy
  has_many :clips, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :post_images, dependent: :destroy
  has_many :post_tags, dependent: :destroy

  accepts_nested_attributes_for :post_images, allow_destroy: true
  accepts_nested_attributes_for :post_tags, allow_destroy: true

  mount_uploader :video, VideoUploader

end
