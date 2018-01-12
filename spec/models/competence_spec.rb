require 'rails_helper'

RSpec.describe Competence, type: :model do

  describe 'DB table Competence' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :skill }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :skill }
  end

end
