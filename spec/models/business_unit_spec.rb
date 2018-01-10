require 'rails_helper'

RSpec.describe BusinessUnit, type: :model do

  describe 'DB table Business Unit' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :unit_name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :unit_name }
  end
end
