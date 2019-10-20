class Reply < ApplicationRecord
  belongs_to :inquiry
  belongs_to :admin_user

  validates :reply_title, :reply_body, presence: true
end
