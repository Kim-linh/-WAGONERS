Rails.application.routes.draw do
  root to: 'wagoners#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wagoners do
    resources :bookings, only: [ :show, :new, :create]
  end
  resources :users, only: [ :show]
end
