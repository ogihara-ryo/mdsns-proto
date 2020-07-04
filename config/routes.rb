Rails.application.routes.draw do
  root 'home#index'

  resources :followees, only: :index
  resources :followers, only: :index

  resources :users, path: '/', only: :show, param: :nickname do
    scope module: :users do
      resources :followees, only: :index
      resources :followers, only: :index
    end
  end

  get '/auth/github/callback' => 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'
end
