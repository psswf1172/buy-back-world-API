require 'api_constraints'

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Api definition
  namespace :api do
    scope module: :v1 do
      resources :users, :only => [:show, :create, :update, :destroy]
      resources :devices
    end
  end
end
