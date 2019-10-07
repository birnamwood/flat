class Post < ApplicationRecord

  belongs_to :prefecture
  belongs_to :municipality
  belongs_to :end_user

  has_many :visits
  has_many :clips
  has_many :evaluates
  has_many :comments
  has_many :post_imgaes
  has_many :post_tags

  accepts_nested_attributes_for :post_images, allow_destroy: true
  accepts_nested_attributes_for :post_tags, allow_destroy: true

  mount_uploader :video, VideoUploader
end
