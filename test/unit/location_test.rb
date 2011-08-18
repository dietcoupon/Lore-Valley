require File.dirname(__FILE__) + '/../test_helper'
require "locations_controller"

class TestLocation < ActionController::TestCase
  
  def setup
    @controller = LocationsController.new
  end

  test "location attributes must not be empty" do 
    location = Location.new
    assert location.invalid?
    assert location.errors[:name].any?
    assert location.errors[:description].any?
    assert location.errors[:placement].any?
    assert location.errors[:image_url].any?
  end
  
end