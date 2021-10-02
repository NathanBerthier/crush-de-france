Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cities, only: %i[index new create edit update destroy] do
    resources :posts, only: %i[index update destroy]
  end
  get ':city_name', to: 'cities#show', as: :show_city
  post ':city_name/post', to: 'posts#create', as: :new_post
end
