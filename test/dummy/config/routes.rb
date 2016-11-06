Rails.application.routes.draw do
  devise_for :users
  mount Bloggable::Engine => "bloggable"

  resources :orgs do
    resources :articles, controller: 'bloggable/articles'
  end
  resources :articles
  resources :users
end
