Rails.application.routes.draw do
  root "pages#home"
  
  resources :tags
  resources :tickets do
    resources :solutions
    resources :comments
    resources :documents
  end

  resources :users do
    resources :executive_users do 
      resources :performance_reports
    end
    resources :requesting_users 
    resources :supervisor_users
    resources :admin_users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
