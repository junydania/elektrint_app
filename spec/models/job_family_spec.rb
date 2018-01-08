require 'rails_helper'

RSpec.describe JobFamily, type: :model do
  describe 'DB table JobFamily' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :family_name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :family_name }
  end
end
