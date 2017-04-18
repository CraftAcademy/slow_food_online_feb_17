class AddUsersAssociationToUserrate < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :userrate, foreign_key: true
  end
end
