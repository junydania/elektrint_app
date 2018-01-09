class Admin::JobFamiliesController < ApplicationController


  def new
    @job_family = JobFamily.new
  end

  def create
    new_job_family = JobFamily.new(job_family_param)
    if new_job_family.save
      flash[:notice] = 'Job Family successfully added'
      redirect_to new_admin_job_family_path
    else
      render 'new'
    end
  end


  private

  def job_family_param
    params.require(:job_family)
        .permit(:family_name)
  end



end
