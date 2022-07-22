Rails.application.routes.draw do
  # mount Avo::Engine, at: Avo.configuration.root_path
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  authenticate :user do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
end
