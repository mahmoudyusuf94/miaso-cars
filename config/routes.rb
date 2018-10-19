Rails.application.routes.draw do
	root to: "admin/cars#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :cars do
      resources :drivers
      resources :battery_changes
      resources :fixes
      resources :oil_changes
      resources :tyre_changes
    end
  end
end
