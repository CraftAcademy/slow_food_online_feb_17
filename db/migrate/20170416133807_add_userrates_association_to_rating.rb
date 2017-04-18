class AddUserratesAssociationToRating < ActiveRecord::Migration[5.0]
  def change
    add_reference :userrates, :rating, foreign_key: true
  end
end
