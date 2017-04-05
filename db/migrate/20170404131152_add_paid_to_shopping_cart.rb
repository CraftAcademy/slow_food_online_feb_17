class AddPaidToShoppingCart < ActiveRecord::Migration[5.0]
  def change
    add_column :shopping_carts, :paid, :boolean, default: false
  end
end
