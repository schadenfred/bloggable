class Org < ApplicationRecord
  has_many :bloggable_articles, as: :bloggable
end
