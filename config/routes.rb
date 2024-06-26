Rails.application.routes.draw do
  resources :reports
  root 'home#index'

  resources :reports, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
