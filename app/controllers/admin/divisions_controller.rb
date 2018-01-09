class Admin::DivisionsController < ApplicationController

  def new
    @division = Division.new
  end

  def create
    @division = Division.new(division_param)
    if @division.save
      flash[:notice] = 'New Business Division Successfully Added'
      redirect_to new_admin_division_path
    else
      render 'new'
    end
  end


  private

  def division_param
    params.require(:division)
        .permit(:division_name)
  end

end
