Rails.application.routes.draw do
  root 'produnts#index'
  resources :produnts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
