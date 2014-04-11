Havebacon::Application.routes.draw do
 
  root :to => "static_pages#home"

  resources :initial_users, only: [:create]

end
