require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :restaurant }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:menu)).to be_valid
    end
  end
end
