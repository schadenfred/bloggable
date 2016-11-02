require 'test_helper'

describe "Bloggable::Comment" do

  subject { Bloggable::Comment }

  describe "db" do

    specify "columns & types" do

      must_have_column(:article_id, :integer)
      must_have_column(:commenter_id, :integer)
      must_have_column(:text, :text)
    end

    specify "indexes" do

      must_have_index([:article_id, :commenter_id])
    end

  end

  describe "associations" do

    specify "blongs_to" do

      must_belong_to(:commenter)
      must_belong_to(:article)
    end
  end

  describe "destroying a user must destroy her comments" do

    Given(:comment) { FactoryGirl.create(:comment) }
    Given(:article) { comment.article }

    When { article.destroy }

    Then { Bloggable::Comment.where(id: comment.id).must_be_empty }
  end
end