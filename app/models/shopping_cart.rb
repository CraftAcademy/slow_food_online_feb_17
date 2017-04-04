class ShoppingCart < ApplicationRecord
  acts_as_shopping_cart
  has_many :shopping_cart_items

  def taxes
    0
  end
end
