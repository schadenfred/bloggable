Rails.application.routes.draw do
  mount Bloggable::Engine => "/bloggable"
end
