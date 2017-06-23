class Payment < ApplicationRecord
	references :user
	belongs_to :user
end
