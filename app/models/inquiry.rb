class Inquiry < ApplicationRecord
  belongs_to :end_user
  has_many :replies, dependent: :destroy
end
