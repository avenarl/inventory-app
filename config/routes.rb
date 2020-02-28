Rails.application.routes.draw do
  resources :products, only: %i[show edit destroy new create update]
  resources :warehouses, only: %i[index show]
end
