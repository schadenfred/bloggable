require 'test_helper'

class Bloggable::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Bloggable
  end
end
