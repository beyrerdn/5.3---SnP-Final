require 'test_helper'

class PostTest < ActiveSupport::TestCase
<<<<<<< HEAD
=======
  test "should not save a post without a title" do
    post = Post.new(:body => "Jesse Ventura", :summary => "Pro wrestler, statesman")
    assert_not post.save, "Save the post without a title."
  end

  test "should not save an author without a first name" do
    author = Author.new(:last_name => "Smith")
    assert_not author.save, "Save the author without a first name."
  end

  test "should not save an author without a last name" do
    author = Author.new(:first_name => "Jane")
    assert_not author.save, "Save the author without a last name."
  end



>>>>>>> bd2e8496480584370d72914f80b6da766f4216ab
  # test "the truth" do
  #   assert true
  # end
end
