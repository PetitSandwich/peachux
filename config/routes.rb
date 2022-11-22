Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :works do
    resources :tasks
  end

  resources :pages
  resources :prospects
  # Defines the root path route ("/")
  root "pages#home"
  get "about", to: "pages#about"
  get "works", to: "works#index"
end
