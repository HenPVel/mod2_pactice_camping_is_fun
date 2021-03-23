Rails.application.routes.draw do
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :new, :edit, :create, :update, :show]
  resources :signups, only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
