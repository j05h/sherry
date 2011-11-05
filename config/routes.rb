Sherry::Application.routes.draw do
  resources :users
  resources :links

  get "share/:id/share.js", :controller => :users, :action => :share, :as => :share

  root :to => 'users#index'
end
