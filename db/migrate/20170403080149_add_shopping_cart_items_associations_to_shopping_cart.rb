class AddShoppingCartItemsAssociationsToShoppingCart < ActiveRecord::Migration[5.0]
  def change
    add_reference :shopping_cart_items, :shopping_cart, foreign_key: true
  end
end
