require 'api_constraints'

Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Api definition
  namespace :api do
    scope module: :v1 do
      resources :brands
      resources :devices
      resources :quotes, defaults: { format: 'json' }
    end
  end
end
