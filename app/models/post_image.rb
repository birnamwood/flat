class PostImage < ApplicationRecord
  belongs_to :post

  mount_uploader :post_image_id, ImagesUploader

  validates :post_image_id, presence: true
end
