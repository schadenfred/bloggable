module Bloggable
  class ApplicationController < ActionController::Base
    layout 'layouts/application'
    protect_from_forgery with: :exception

    def current_user
      User.first
    end
  end
end
