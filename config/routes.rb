require 'api_constraints'

Rails.application.routes.draw do
  devise_for :users
  scope '/admin' do 
    resources :users
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  namespace :api, defaults: { format: :json },
    constraints: { subdomain: 'api' }, path: '/' do
    
    scope module: :v1, 
      constraints: ApiConstraints.new(version: 1, default: true) do

    end
  end
end