Rails.application.routes.draw do
  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/confirm_account', to: 'confirm_account#confirm_account'
  get '/reconfirm_account', to: 'confirm_account#reconfirm'
  post '/update_token', to: 'confirm_account#update_token'

  get '/require_reset_pass', to: 'reset_password#require_reset_password'
  post '/require_reset_pass', to: 'reset_password#send_reset_pass'
  get '/reset_password', to: 'reset_password#index'
  post '/check_reset_token', to: 'reset_password#check_reset_token'

  resources :users
  resources :books
  resources :confirm_account
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
