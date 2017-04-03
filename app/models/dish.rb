class Dish < ApplicationRecord
  validates_presence_of :name, :price
  validates :description, presence: true
  belongs_to :menu, dependent: :destroy
end
