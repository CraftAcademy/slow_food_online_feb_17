class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :food_style, presence: true
end