require "test_helper"

describe "Org" do

  subject { Org }

  describe "associations" do

    specify "has many" do

      must_have_many(:articles)
      must_have_many(:comments)
    end
  end
end
