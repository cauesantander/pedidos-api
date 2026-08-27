Rails.application.routes.draw do
  # Swagger
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Autenticação
  post "/login", to: "sessions#create"
  post "/register", to: "users#create"

  # Recursos
  resources :customers
  resources :orders

  # root "posts#index"
end