Rails.application.routes.draw do
  get 'bookings/show'
  get 'booking/show'
  get 'armored_cars/edit'
  get 'armored_cars/update'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  resources   :users,        only: %i[show]
  resources   :armored_cars, only: %i[edit update new create delete] do
    resources :bookings,     only: %i[show delete create new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
