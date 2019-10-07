class Inquiry < ApplicationRecord
  has_many :replies, dependent: :destroy
end
