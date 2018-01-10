class Admin::BusinessUnitsController < ApplicationController

  def new
    @business_unit = BusinessUnit.new
  end

  def create
    @business_unit = BusinessUnit.new(business_unit_param)
    if @business_unit.save
      flash[:notice] = 'New Business Unit Successfully Added'
      redirect_to new_admin_business_unit_path
    else
      render 'new'
    end
  end


  private

  def business_unit_param
    params.require(:business_unit)
        .permit(:unit_name)
  end

end
