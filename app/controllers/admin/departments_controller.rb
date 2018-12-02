class Admin::DepartmentsController < ApplicationController

    def index
        @departments = Department.order(:id)
    end

    def new
     @department = Department.new
    end
    
    def create
        new_department = Department.new(department_param)
        if new_category.save
            flash[:notice] = 'New Department successfully added!'
            redirect_to new_admin_department_path
        else
            render 'new'
        end
    end
    
    
    private

    def department_param
        params.require(:department)
            .permit(:name)
    end


end
