require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test "Title and description cannot be blank" do
    t = Topic.new
    assert t.valid? == false, "Expected topic to be invalid"    
  end

  test "Title and Description is required" do
    t = Topic.new(:title => "mytitle", :description=> "mydescription")
    assert t.valid?, "Topic is valid"
  end
  
  test "Topic has votes" do
    t = Topic.new(:title=> "mytitle", :description=> "mydescription")
    assert t.votes == []
  end
end
 