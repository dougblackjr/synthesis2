Rails.application.routes.draw do
  devise_for :users
  resources :lockers
  resources :programs
  resources :beds
  resources :demographics
  resources :drugs
  resources :residents
  resources :places

  root 'residents#index'
end
