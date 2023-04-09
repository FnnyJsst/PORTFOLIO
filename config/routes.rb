Rails.application.routes.draw do
  resources :articles
  root to: "pages#home"
  get '/about', to: 'pages#about'
  get '/education', to: 'pages#education'
  get '/skills', to: 'pages#skills'
  get '/portfolio', to: 'pages#portfolio'
  get '/contact/new', to: 'contact#new'
  post '/contact', to: 'contact#create', as: 'contact_index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
