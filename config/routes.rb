Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'restaurants/index'
    end
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # API Routes
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show, :create, :update, :destroy ]
    end
  end
end
