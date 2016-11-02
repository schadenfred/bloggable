require 'test_helper'

describe "Bloggable::Article" do

  subject { Bloggable::Article }

  describe "db" do

    specify "columns & types" do

      must_have_column(:author_id, :integer)
      must_have_column(:bloggable_id, :integer)
      must_have_column(:bloggable_type, :string)
      must_have_column(:text, :text)
      must_have_column(:title, :string)
    end

    specify "indexes" do

      must_have_index(:slug)
      must_have_index(:title)
    end
  end

  describe "associations" do

    specify "belongs to" do

      must_belong_to :author
      must_belong_to :bloggable
    end

    specify "has many" do

      must_have_many :comments
    end
  end
end