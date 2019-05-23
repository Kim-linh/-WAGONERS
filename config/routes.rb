Rails.application.routes.draw do
  root to: 'wagoners#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wagoners do
    member do                             # member => restaurant id in URL
      get 'wag_show'                          # RestaurantsController#chef
    end
    resources :bookings, only: [ :index, :new, :create]
  end
  # resources :users, only: [ :show]
end
