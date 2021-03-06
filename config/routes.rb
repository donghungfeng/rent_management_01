Rails.application.routes.draw do
  namespace :admin do
    get 'users/account'
  end
  root "static_pages#home"
  get  "/room", to: "static_pages#room"
  get  "/news", to: "static_pages#news"
  get  "/contact", to: "static_pages#contact"
  get  "/help", to: "static_pages#help"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  namespace :admin do

  end
end
