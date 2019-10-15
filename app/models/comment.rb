class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :end_user
  
  validates :content, length: { in: 1..100 }
end
