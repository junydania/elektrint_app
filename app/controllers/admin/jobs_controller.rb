class Admin::JobsController < ApplicationController

  before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def new
    @business_units = BusinessUnit.all
    @organizational_units = OrganizationalUnit.all
    @divisions = Division.all
    @job_families = JobFamily.all
    @primary_clusters= PrimaryCluster.all
    @secondary_clusters = SecondaryCluster.all
    @work_level = WorkLevel.all
    @job = Job.new
    @job.competences.build
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = 'New Job Successfully Added'
      redirect_to new_admin_job_path
    else
      render :new
    end
  end


  def job_params
    params.require(:job).permit(:job_name,
                                :sbg_grade,
                                :competence_id,
                                :job_family_id,
                                :business_unit_id,
                                :organizational_unit_id,
                                :division_id,
                                :primary_cluster_id,
                                :secondary_cluster_id,
                                :work_level_id,
                                competences_attributes: [:id, :skill, :_destroy])
  end

end

