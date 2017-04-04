require 'rails_helper'

RSpec.describe Dish, type: :model do
  it 'has a valid factory' do
    expect(create(:dish)).to be_valid
  end

  describe 'DB schema' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :description }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :description }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:menu).dependent(:destroy) }
  end
end
