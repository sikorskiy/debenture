Rails.application.routes.draw do
  resources :users, :debentures

  post 'login', to:'users#check', as:'post_login'
  get 'login', to:'users#login', as:'user_login'

  get 'logout', to:'users#log_out', as:'logout'

  get 'info', to:'users#info'

  root 'users#login'
end
