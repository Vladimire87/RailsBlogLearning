Rails.application.routes.draw do
  get 'home/index'
  resources :contacts, only: %i[new create]

  resources :articles
end
