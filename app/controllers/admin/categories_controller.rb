class Admin::CategoriesController < ApplicationController

    def index
        @categories = Category.order(:id)
    end

    def new
     @category = Category.new
    end
    
    def create
        new_category = Category.new(category_param)
        if new_category.save
            flash[:notice] = 'New Category Successfully Added'
            redirect_to new_admin_category_path
        else
            render 'new'
        end
    end
    
    
    private

    def category_param
        params.require(:category)
            .permit(:category_name)
    end


end
