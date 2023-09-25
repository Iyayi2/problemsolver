Rails.application.routes.draw do
  devise_for :users
  root to: "tickets#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tickets, only: %i[index show new create destroy] do
    resources :responses, only: %i[new create]
  end
  # resources :tickets, only: [:index]
  # resources :responses, only: [:index]
end
