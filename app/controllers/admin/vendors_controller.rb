class Admin::VendorsController < ApplicationController

  def index
      @vendors = Vendor.order(:id)
  end

  def new
   @vendor = Vendor.new
  end

  def create
    binding.pry
      new_vendor = Vendor.new(vendor_param)
      if new_vendor.save
          flash[:notice] = 'New Vendor successfully added!'
          redirect_to new_vendor_path
      else
          render 'new'
      end
  end


  private

  def vendor_param
      params.require(:vendor)
          .permit(:company_name,
                  :email,
                  :phone,
                  :representative_name,
                  :company_address,
                  )
  end





end
