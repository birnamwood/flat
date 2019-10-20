class Inquiry < ApplicationRecord
  belongs_to :end_user
  has_many :replies, dependent: :destroy

  validates :inquiry_title, :inquiry_body, presence: true
end
