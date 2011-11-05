Sherry::Application.routes.draw do
  resources :users
  resources :links

  root :to => 'users#index'
end
