class Region < ApplicationRecord
  has_many :prefectures, dependent: :destroy

  validates :region_name, presence: true
end
