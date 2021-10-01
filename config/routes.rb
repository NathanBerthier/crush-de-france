Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cities, only: %i[index show new create]
end
