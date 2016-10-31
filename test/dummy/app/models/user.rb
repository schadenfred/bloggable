class User < ApplicationRecord

  has_many :articles, as: :author
  has_many :articles, as: :bloggable
end
