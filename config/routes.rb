Havebacon::Application.routes.draw do
 
  root :to => "static_pages#home"

  resources :initial_users, only: [:create]

  namespace :api do
    resources :users, only: [:show, :create, :update, :destroy] do
      member do
        get "transactions"
      end
      resources :goals, only: [:show, :index, :create, :update, :destroy] do
        resources :transactions, only: [:show, :index, :create, :update, :destroy]
      end
    end
  end

end
