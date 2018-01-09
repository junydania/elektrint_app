class SecondaryCluster < ApplicationRecord


  validates_presence_of  :cluster_name

  before_save :capitalize_cluster_name

  private

  def capitalize_cluster_name
    self.cluster_name = self.cluster_name.downcase.titleize
  end


end
