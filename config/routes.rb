Rails.application.routes.draw do
  resources :articles
  #get 'article/:id' to: 'articles#index' 
end
