Sherry::Application.routes.draw do
  resources :users
  resources :links

  get "share/:id", :controller => :links, :action => :create, :as => :share

  root :to => 'users#index'
end
