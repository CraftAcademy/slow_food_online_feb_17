class Userrate < ApplicationRecord
  validates :check, presence: true

  has_one :user
  has_one :rating
end
