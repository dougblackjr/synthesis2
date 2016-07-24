Rails.application.routes.draw do
  resources :demographics
  resources :drugs
  resources :residents
  resources :places

  root 'residents#index'
end
