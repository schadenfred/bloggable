require "test_helper"

describe User do

  subject { User }

  describe "db" do

    specify "columns & types" do

      must_have_column(:name)
    end

  end

  specify "associations" do

    must_have_many(:articles)
  end
end
