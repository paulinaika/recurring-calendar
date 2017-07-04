Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users

  resources :bookings

  resources :advisors do
    resources :bookings, only: [:index, :show, :new, :create]
  end

  resources :users do
    resources :bookings, only: [:index, :show, :new, :create]
  end

  resources :advisors do
  	resources :exceptions, module: :advisors
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
