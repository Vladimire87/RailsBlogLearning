Rails.application.routes.draw do
  get 'home/index'
  resource :contacts, only: %i[new create], path_names: { new: '' }

  resources :articles
end
