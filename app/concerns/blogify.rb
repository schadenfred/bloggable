module Blogify
  extend ActiveSupport::Concern

  module ClassMethods

    def bloggable?
      true
    end
  end

  included do

    has_many :articles, as: :bloggable, inverse_of: true
    has_many :comments, through: :articles
  end
end