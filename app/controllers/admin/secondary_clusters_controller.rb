class Admin::SecondaryClustersController < ApplicationController


  def index
    @secondary_clusters = SecondaryCluster.order(:id)
  end


  def new
    @secondary_cluster = SecondaryCluster.new
  end

  def create
    new_secondary_cluster = SecondaryCluster.new(secondary_cluster_param)
    if new_secondary_cluster.save
      flash[:notice] = 'New Secondary Cluster Successfully Added'
      redirect_to new_admin_secondary_cluster_path
    else
      render 'new'
    end
  end


  private

  def secondary_cluster_param
    params.require(:secondary_cluster)
        .permit(:cluster_name)
  end

end
