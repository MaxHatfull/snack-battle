Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chocolates

  root to: 'voting#show'
  post '/vote', to: 'voting#vote'
end
