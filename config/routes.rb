Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cities, only: %i[index new create]
  get ':city_name', to: 'cities#show', as: :show_city
end
