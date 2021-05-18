Rails.application.routes.draw do
  resources :bookmarks
  get 'health/index'
  resources :profiles
  #get 'profiles/index'
  #get 'logins/index'
  #root to: 'articles#index'
  root to:'homepages#index'
  get "/articles", to: "articles#index"
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  end
  #get "/homepages", to: "homepages#index"
  #get "/logins", to: "logins#index"
  #get "/profiles", to: "profiles#index"
  resources :logins
  #/api/articles  
  namespace :api do    
    resources :articles, only: [:index, :show]  
  end
end
