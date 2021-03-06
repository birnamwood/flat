class Municipality < ApplicationRecord
  belongs_to :prefecture
  has_many :end_users
  has_many :posts, dependent: :destroy
  
  validates :municipality_name, presence: true
end
