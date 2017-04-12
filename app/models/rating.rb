class Rating < ApplicationRecord
  validates_presence_of :rating, :counter
  belongs_to :restaurant

  def self.rating_range
    ['1','2','3','4','5']
  end
end
