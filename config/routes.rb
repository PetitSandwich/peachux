Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pages

  authenticate :user do

    resources :works, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    # etc...

  end
  # Defines the root path route ("/")
  root "pages#home"
  get "about", to: "pages#about"
  # root "pages#home"
end
