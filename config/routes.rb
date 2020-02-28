Rails.application.routes.draw do
  resources :products, only: %i[show edit destroy new]
end
