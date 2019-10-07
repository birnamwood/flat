class Address < ApplicationRecord
	belongs_to :end_user
  belongs_to :prefecture
  belongs_to :municipality
end
