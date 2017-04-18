require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :rating }
    it { is_expected.to have_db_column :counter }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :rating }
    it { is_expected.to validate_presence_of :counter }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :restaurant }
    it { is_expected.to have_many :userrates }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:rating)).to be_valid
    end
  end
end
