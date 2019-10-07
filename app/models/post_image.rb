class PostImage < ApplicationRecord
  belongs_to :post

  mount_uploader :post_image_id, ImagesUploader
end
