Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :create, :new]
  # get 'powers/search/'  to: 'power#show'
  # post '/powers' to: 'power#show'
end
