Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  # Defines the root path route ("/")
  root "categories#index"

  get "splash", to: "categories#splash"

  resources :categories, only: [:index, :show, :new, :create] do
    resources :purchases, only: [:index, :new, :create]
  end
end
