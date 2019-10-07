class Reply < ApplicationRecord
  belongs_to :inquiry
  belongs_to :admin_user
end
