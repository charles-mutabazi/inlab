require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :locations
      resources :users
      resources :floors
    end
  end

  resources :locations
  resources :users
  resources :floors
  root 'floors#index'

end
