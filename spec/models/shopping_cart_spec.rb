require 'rails_helper'

RSpec.describe ShoppingCart, type: :model do
 describe 'DB table' do
   it { is_expected.to have_db_column(:id).of_type(:integer)}
 end

 describe 'associations' do
   it { is_expected.to have_many :shopping_cart_items}
 end
end
