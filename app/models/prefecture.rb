class Prefecture < ApplicationRecord
  belongs_to :region

  has_many :municipalities, dependent: :destroy
  has_many :end_users, dependent: :destroy
  has_many :posts, dependent: :destroy

end
