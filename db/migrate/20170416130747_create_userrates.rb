class CreateUserrates < ActiveRecord::Migration[5.0]
  def change
    create_table :userrates do |t|
      t.boolean :check

      t.timestamps
    end
  end
end
