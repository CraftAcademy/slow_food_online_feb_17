class AddCreateToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :description, :string
  end
end
