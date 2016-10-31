module Bloggable
  class Article < ApplicationRecord

    belongs_to :bloggable, polymorphic: true, touch: true
    belongs_to :author, class_name: "User"

    has_many :comments
  end
end
