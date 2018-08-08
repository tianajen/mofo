Rails.application.routes.draw do

  get 'sessions/new'
  resources :users
  get '/', to: 'static_pages#home'
  get '/thgttg-secret', to: 'static_pages#secret', as: 'secret'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# <a href="<%= secret_path %>">Secret</a>