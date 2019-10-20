class Tag < ApplicationRecord
  has_many :post_tags, dependent: :destroy

  has_many :post_in_tags, foreign_key: "tag_id", class_name: "PostTag", dependent: :destroy
  has_many :tag_posts, through: :post_in_tags, source: :post

  validates :tag_name, presence: true
end
