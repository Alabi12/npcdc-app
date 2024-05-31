Rails.application.routes.draw do
  root 'home#index'

  resources :data_capturings, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
