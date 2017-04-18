class AddUserratesAssociationToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :userrates, :user, foreign_key: true
  end
end
