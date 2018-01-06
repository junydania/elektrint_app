Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # root to:  "admin/jobs#index"

  get "admin" => "admin/jobs#index", :as =>"admin_home"

  namespace :admin do
    resources :jobs
  end


end
