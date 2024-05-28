Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :kitties, only: [:new, :create, :destroy]

  root "kitties#index"
end
