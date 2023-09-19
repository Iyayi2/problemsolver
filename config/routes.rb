Rails.application.routes.draw do
  devise_for :users
  root to: "tickets#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tickets, only: %i[index new create]
  # resources :tickets, only: [:index]
end
