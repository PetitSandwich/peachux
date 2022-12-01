Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
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
    get "kraze", to: "works#kraze"
    get "lcl", to: "works#lcl"
    get "cryptopassion", to: "works#cryptopassion"
    get "accor", to: "works#accor"
  end
end
