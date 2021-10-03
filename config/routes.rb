Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cities do
    resources :posts, only: %i[index update destroy]
    resources :insta_acounts, only: %i[new create edit update]
  end
  get ':city_name', to: 'cities#show', as: :show_city
  post ':city_name/post', to: 'posts#create', as: :new_post
end
