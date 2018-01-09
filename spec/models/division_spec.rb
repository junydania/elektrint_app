require 'rails_helper'

RSpec.describe Division, type: :model do

  describe 'DB table Division' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :division_name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :division_name }
  end


end
