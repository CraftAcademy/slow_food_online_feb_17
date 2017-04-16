class AddRatingsAssociationToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_reference :ratings, :restaurant, foreign_key: true
  end
end
