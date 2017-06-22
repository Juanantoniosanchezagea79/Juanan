class Setting < ApplicationRecord

  belongs_to :user
  
  # validates :name, presence : { message: :no_name}
  validates :country, length: { minimum: 2, message: :country }
  validates :language, length: { minimum: 2, message: :language }
end
