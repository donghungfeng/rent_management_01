Rails.application.routes.draw do
  root "static_pages#home"
  get "/order", to: "orders#index"
  get  "/room/:id", to: "rooms#show"
  get "/newbook", to: "orders#show"
  post "/newbook", to: "orders#create"
  get "home", to: "static_pages#home"
  get  "/room", to: "rooms#index"
  get  "/room/:id", to: "rooms#show"
  get "/bookroom/:id", to: "rooms#bookroom"
  get  "/contact", to: "static_pages#contact"
  get  "/help", to: "static_pages#help"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :orders
  resources :posts
  resources :comments
  get 'orders/show/:id', to: "orders#show"
  get '/news', to: "posts#index"
  get '/news', to: "comments#comment"
  get '/posts/:id', to: "posts#show"
  post '/posts/:id', to: "posts#destroy"
  namespace :admin do
    get 'orders/admin_order'
    get 'orders/owner_order'
    get 'homes/room/:id', to: "homes#room"
   
    get "homes/new_room/:id", to: "homes#new_room"
    resources :homes
    post "homes/create_room",  to: "homes#create_room"
    resources :users
    resources :orders
  end
end
