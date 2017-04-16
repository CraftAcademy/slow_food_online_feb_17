class Rating < ApplicationRecord
  validates_presence_of :rating, :counter
  belongs_to :restaurant

  def self.rating_range
    ['1','2','3','4','5']
  end




  def update_rating(params)
    if params[:rating]
      count = self.counter + 1
      if params[:rating][:rating].to_f > self.rating
        rat = (params[:rating][:rating].to_f / count.to_f ) + self.rating
      else
        rat = self.rating - (params[:rating][:rating].to_f / count.to_f )
      end
      self.update(rating: rat , counter: count.to_i)
    end
  end
end
