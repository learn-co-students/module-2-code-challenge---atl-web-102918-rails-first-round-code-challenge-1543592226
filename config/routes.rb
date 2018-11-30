Rails.application.routes.draw do
  resources :powers, except: [:destroy, :edit, :update]
  resources :heroines, except: [:destroy, :edit, :update]
end
