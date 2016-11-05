class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, as: :author
  has_many :articles, as: :bloggable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
