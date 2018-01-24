class Admin::OrganizationalUnitsController < ApplicationController

  def index
    @organizational_units = OrganizationalUnit.order(:id)
  end

  def new
    @org_unit = OrganizationalUnit.new
  end

  def create
    @org_unit = OrganizationalUnit.new(org_unit_param)
    if @org_unit.save
      flash[:notice] = 'Organizational Unit Successfully Added'
      redirect_to new_admin_organizational_unit_path
    else
      render 'new'
    end
  end


  private

  def org_unit_param
    params.require(:organizational_unit)
        .permit(:unit_name)
  end


end
