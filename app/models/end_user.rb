class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  belongs_to :prefecture
  belongs_to :municipality

  has_many :posts, dependent: :destroy
  has_many :visits, dependent: :destroy
  has_many :clips, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :inquiries, dependent: :destroy

  has_many :user_clips, foreign_key: "end_user_id", class_name: "Clip", dependent: :destroy
  has_many :clip_posts, through: :user_clips, source: :post
  has_many :user_visits, foreign_key: "end_user_id", class_name: "Visit", dependent: :destroy
  has_many :visit_posts, through: :user_visits, source: :post

  has_many :active_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :passive_relationships, class_name:  "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  mount_uploader :icon_image_id, ImagesUploader

   # ユーザーをフォローする
  def follow(other_user)
    following << other_user
  end

  # ユーザーをフォロー解除する
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_user)
    following.include?(other_user)
  end

  def self.find_for_oauth(auth)
    end_user = EndUser.where(uid: auth.uid, provider: auth.provider).first
    unless end_user
      end_user = EndUser.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        name:  auth.info.name,
        nickname:  auth.info.nickname,
        password: Devise.friendly_token[0, 20],
        prefecture_id:  1,
        municipality_id: 1,
      )
    end
    end_user
  end

end
