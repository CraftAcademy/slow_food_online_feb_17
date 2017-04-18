class AddRatingAssociationToUserrate < ActiveRecord::Migration[5.0]
  def change
    add_reference :ratings, :userrate, foreign_key: true
  end
end
