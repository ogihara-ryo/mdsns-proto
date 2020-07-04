Rails.application.routes.draw do
  root 'home#index'

  resources :followees, only: :index
  resources :followers, only: :index
  resources :users, path: '/', only: :show, param: :nickname do
    resources :followees, only: :index
    resources :followers, only: :index
  end

  get '/auth/github/callback' => 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'
end
