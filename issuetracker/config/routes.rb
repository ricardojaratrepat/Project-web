Rails.application.routes.draw do
  resources :executive_users
  resources :requesting_users
  resources :supervisor_users
  resources :support_staffs
  resources :admin_users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
