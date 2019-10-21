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

  validates :post_name, :prefecture_id, :municipality_id, :body, presence: true

  def cliped_by?(end_user) #クリップしているかどうか
    clips.where(end_user_id: end_user.id).exists?
  end
  def visited_by?(end_user) #行ったかどうか
    visits.where(end_user_id: end_user.id).exists?
  end

end
