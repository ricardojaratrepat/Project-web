Rails.application.routes.draw do
  resources :performance_reports
  resources :solutions
  resources :comments
  resources :documents
  resources :tags
  resources :tickets
  resources :executive_users
  resources :requesting_users
  resources :supervisor_users
  resources :admin_users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
