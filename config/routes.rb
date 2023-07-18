Rails.application.routes.draw do
  root 'home#index'
  resource :contacts, only: [:new, :create]

  resources :articles
end
