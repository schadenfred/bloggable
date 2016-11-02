class Org < ApplicationRecord

  include Blogify
  # has_many :articles, as: :bloggable, touch: true
end
