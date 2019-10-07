class Prefecture < ApplicationRecord
  belongs_to :region

  has_many :adresses
  has_many :municipalities
  has_many :end_users
  has_many :posts

end
