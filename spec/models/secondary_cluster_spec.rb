require 'rails_helper'

RSpec.describe SecondaryCluster, type: :model do

  describe 'DB table SecondaryCluster' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :cluster_name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :cluster_name }
  end

end
