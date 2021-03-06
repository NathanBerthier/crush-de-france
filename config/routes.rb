Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :cities do
    resources :posts, only: %i[index update destroy]
    resources :insta_acounts, only: %i[new create edit update]
    resources :users, only: [:index] do
      resources :moderators, only: %i[create destroy]
    end
  end
  get ':city_name', to: 'cities#show', as: :show_city
  post ':city_name/post', to: 'posts#create', as: :new_post
  patch '/cities/:id/subsciption/:sub_id', to: 'cities#update_subscription', as: :update_subscription
  get '/cities/:id/subsciption', to: 'cities#subscription', as: :subscription
end
