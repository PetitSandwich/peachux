Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  authenticate :user do

    resources :works, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    # etc...

  end
  # Defines the root path route ("/")
  root "pages#home"
end
