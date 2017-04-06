class Dish < ApplicationRecord
  validates_presence_of :name, :price, :description, :category
  belongs_to :menu, dependent: :destroy
end
