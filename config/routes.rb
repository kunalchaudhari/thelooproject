Rails.application.routes.draw do
  root to: 'toilets#index'
  resources :toilets
end
