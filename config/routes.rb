Rails.application.routes.draw do
  get 'wagoners/index'
  get 'wagoners/show'
  get 'wagoners/new'
  get 'wagoners/create'
  get 'wagoners/edit'
  get 'wagoners/update'
  get 'wagoners/destroy'
  root to: 'wagoners#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wagoners do
    resources :bookings, only: [ :new, :create, :show]
  end
  resources :users, only: [ :show]
end
