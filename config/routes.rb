Rails.application.routes.draw do
  resources :products, only: %i[show edit delete]
end
