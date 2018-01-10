Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  get "admin" => "admin/jobs#index", :as =>"admin_home"

  namespace :admin do
    resources :jobs
    resources :job_families
    resources :primary_clusters
    resources :secondary_clusters
    resources :divisions
    resources :business_units
  end


end
