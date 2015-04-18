Rails.application.routes.draw do
  root to: 'loos#index'
  get '/search', to: 'loos#search'
  resources :loos
end
