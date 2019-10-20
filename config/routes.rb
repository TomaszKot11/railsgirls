Rails.application.routes.draw do
  root to: 'posts#index'
  resources :ideas
  # get '/posts', to: 'posts#index'
  resources :posts
  resources :users

  post '/comments', to: 'comments#create'

  # get '/userss', to: 'users#index'
  # post '/create_user', to: 'users#create_user'
  # get '/posts/:id', to: 'posts#show'
  # get '/cos', to: 'posts#dowolna_funkcja'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # komentarz git
end
