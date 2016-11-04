Rails.application.routes.draw do
  mount Bloggable::Engine => ""

  resources :orgs do
    resources :articles, controller: 'bloggable/articles'
  end
  resources :articles
  resources :users
end
