class PrimaryCluster < ApplicationRecord

  has_many :jobs

  before_save :capitalize_cluster_name

  validates_presence_of :cluster_name



  private

  def capitalize_cluster_name
    self.cluster_name = self.cluster_name.downcase.titleize
    return true
  end

end
