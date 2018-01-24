class Admin::WorkLevelsController < ApplicationController

  def index
    @work_levels = WorkLevel.order(:id)
  end

  def new
    @work_level = WorkLevel.new
  end

  def create
    new_work_level = WorkLevel.new(work_level_param)
    if new_work_level.save
      flash[:notice] = 'Work Level Successfully Added'
      redirect_to new_admin_work_level_path
    else
      render 'new'
    end
  end


  private

  def work_level_param
    params.require(:work_level)
        .permit(:level_name)
  end


end
