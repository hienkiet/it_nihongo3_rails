Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static_pages#show", page: "home"
  get "/static_pages/:page", to: "static_pages#show"
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end
end
