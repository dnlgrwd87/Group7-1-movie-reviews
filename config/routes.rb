Rails.application.routes.draw do
  get 'landing/index'

  resources :reviews do
    resources :comments 
  end

  root 'landing#index'
end
