Rails.application.routes.draw do
  get "makeup_products/index"
  get "makeup_products/show"
  get "product_categories/index"
  get "product_categories/show"
  get "brands/index"
  get "brands/show"
   root 'home#index'
   get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :brands, only: [:index, :show]
  resources :product_categories, only: [:index, :show]
  resources :makeup_products, only: [:index, :show]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
