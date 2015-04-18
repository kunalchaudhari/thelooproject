Rails.application.routes.draw do
  root to: 'loos#index'
  resources :loos
end
