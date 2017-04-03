class Dish < ApplicationRecord
  validates_presence_of :name, :price, :description
  belongs_to :menu, dependent: :destroy
end
