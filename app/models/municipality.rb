class Municipality < ApplicationRecord
  belongs_to :prefecture
  has_many :addresses
  has_many :end_users
  has_many :posts
end
