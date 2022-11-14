Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#splash"

  resources :categories, only: [:index, :show, :new, :create] do
    resources :purchases, only: [:index, :new, :create]
  end

  resources :purchases, only: [:show, :edit, :update, :destroy]
end
