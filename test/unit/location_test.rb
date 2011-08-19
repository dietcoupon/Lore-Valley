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
  
  test "image_url must be an image" do
    def new_location(image_url)
      Location.new( :name         => "Locationland",
                    :description  => "A hallowed villa of ages upon ages.",
                    :placement    => 0666,
                    :image_url    => image_url)
    end                  
    ok = %w{  https://a.b.c/x/y/z/fred.jpg 
              http://a.b.c/x/y/z/fred.png 
              http://a.b.c/x/y/z/FRED.JPG 
              https://a.b.c/x/y/z/FRED.Jpg 
              http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }    
    ok.each do |name|
      assert new_location(name).valid?, "#{name} shouldn't be invalid"
    end    
    bad.each do |name|
      assert new_location(name).invalid?, "#{name} shouldn't be valid"
    end    
  end
  
end