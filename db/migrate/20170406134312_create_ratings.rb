class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.float :rating
      t.integer :counter
      t.timestamps
    end
  end
end
