class Municipality < ApplicationRecord
  belongs_to :prefecture
  has_many :addresses, dependent: :destroy
  has_many :end_users
  has_many :posts, dependent: :destroy
end
