require 'rails_helper'

RSpec.describe ShoppingCartItem, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :owner_id }
    it { is_expected.to have_db_column :owner_type }
    it { is_expected.to have_db_column :quantity }
    it { is_expected.to have_db_column :item_id }
    it { is_expected.to have_db_column :item_type }
    it { is_expected.to have_db_column :price_cents }
    it { is_expected.to have_db_column :price_currency }
  end

  describe 'associations' do
   it { is_expected.to belong_to :shopping_cart}
  end

  it 'should have a valid factory' do
    expect(create(:shopping_cart_item)).to be_valid
  end
end
