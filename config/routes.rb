Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  get "/users/index" => "users#index", as: "index"
  resources :books, only: [:new, :create, :index, :update, :edit, :show, :destroy]
  resources :users, only: [:index, :edit, :show, :update]

end