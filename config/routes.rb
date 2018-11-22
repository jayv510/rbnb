Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :spaces do
    resources :bookings, shallow: true
  end

  resources :users do
    resources :bookings
  end

end
