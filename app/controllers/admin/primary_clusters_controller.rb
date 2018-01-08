class Admin::PrimaryClustersController < ApplicationController

  def new
    @primary_cluster = PrimaryCluster.new
  end

  def create
    new_primary_cluster = PrimaryCluster.new(primary_cluster_param)
    if new_primary_cluster.save
      flash[:notice] = 'New Primary Cluster Successfully Added'
      redirect_to new_admin_job_family_path
    end
  end


  private

  def primary_cluster_param
    params.require(:primary_cluster)
        .permit(:cluster_name)
  end
end


