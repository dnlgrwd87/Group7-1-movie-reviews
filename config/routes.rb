Rails.application.routes.draw do
  get 'landing/index'

  resources :reviews

  root 'landing#index'
end
