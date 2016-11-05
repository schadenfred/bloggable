Bloggable::Engine.routes.draw do

  devise_for :user
  resources :articles

end
