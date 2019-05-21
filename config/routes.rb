Rails.application.routes.draw do
  get 'bookings/start_at:datetime'
  get 'bookings/end_at:datetime'
  get 'bookings/user:references'
  get 'bookings/wagoner:references'
  root to: 'wagoners#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wagoners do
    resources :bookings, only: [ :new, :create, :show]
  end
  resources :users, only: [ :show]
end
