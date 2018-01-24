class SecondaryCluster < ApplicationRecord

  has_many :jobs

  before_create :capitalize_cluster_name

  validates_presence_of  :cluster_name




  private

  def capitalize_cluster_name
    self.cluster_name = self.cluster_name.downcase.titleize
  end


end
