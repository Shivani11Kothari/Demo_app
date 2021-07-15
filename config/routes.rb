Rails.application.routes.draw do
  root to: 'home#index'
  resources  :articles do
    member do
      put "like" => "articles#vote"
      put "dislike" => "articles#downvote"
    end
    resources :comments
  end
  devise_for :users
 get 'home/index'
 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
