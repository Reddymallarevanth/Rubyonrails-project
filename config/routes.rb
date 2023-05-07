Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: redirect('/home')
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'diaries', to: 'diaries#index', as: 'diaries'
  resources :searches
  get 'uploads', to: 'diaries#upload', as: 'uploads'
  get 'customers', to: 'customers#index', as: 'customers'
  get 'customers/:id', to: 'customers#index', as: 'customer'
  get 'customers/:id/edit', to: 'customers#edit', as: 'edit_customer'
  delete 'customers/:id', to: 'customers#destroy'
  post 'diaries', to: 'diaries#create'
  get 'diaries/new', to: 'diaries#new', as: 'new_diary'
  get 'diaries/:id/edit', to: 'diaries#edit', as: "edit_diary"
  patch 'diaries/:id', to: 'diaries#update'
  delete 'diaries/:id', to: 'diaries#destroy'
  get 'diaries/:id', to: 'diaries#show', as: 'diary'
  get 'winners', to: 'diaries#winner', as: 'winners'
end
