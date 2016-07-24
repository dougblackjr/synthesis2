Rails.application.routes.draw do
  resources :admissions
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
