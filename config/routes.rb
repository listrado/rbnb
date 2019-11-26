Rails.application.routes.draw do
  get 'bookings/show'
  get 'booking/show'
  get 'armored_cars/edit'
  get 'armored_cars/update'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  resources   :users,        only: %i[show]
  resources   :armored_cars, only: %i[edit update] do
    resources :bookings,     only: %i[show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
