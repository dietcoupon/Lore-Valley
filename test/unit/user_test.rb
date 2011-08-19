require File.dirname(__FILE__) + '/../test_helper'
require "users_controller"

class TestUser < ActionController::TestCase
  
  def setup
    @controller = UsersController.new
  end
  
  test "user attributes must not be empty" do 
    user = User.new
    assert user.invalid?
    assert user.errors[:id].any?
    assert user.errors[:username].any?
    assert user.errors[:password].any?
    assert user.errors[:email].any?
    assert user.errors[:alias].any?
    assert user.errors[:race].any?
    assert user.errors[:class].any?
    assert user.errors[:sex].any?
    assert user.errors[:preference].any?
    assert user.errors[:alignment].any?
  end
  
end