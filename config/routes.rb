Rails.application.routes.draw do
  devise_for :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static_pages#show", page: "home"
  get "/static_pages/:page", to: "static_pages#show"
end
