class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :food_style, presence: true
  validates :description, presence: true

  has_one :menu
  has_one :rating

  private

  def start_rating
    
  end
end
