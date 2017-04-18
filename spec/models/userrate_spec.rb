require 'rails_helper'

  RSpec.describe Userrate, type: :model do
  describe 'DB table' do
   it { is_expected.to have_db_column :check }
  end

  describe 'Validations' do
   it { is_expected.to validate_presence_of :check }
  end

  describe 'Associations' do
   it { is_expected.to have_one :user }
   it { is_expected.to have_one :rating }
  end
end
