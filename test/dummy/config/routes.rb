Rails.application.routes.draw do
  resources :orgs
  resources :users
  mount Bloggable::Engine => "/bloggable"
end
