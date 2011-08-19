#require File.dirname(__FILE__) + '/../test_helper'
#require "occupants_controller"
#
#class TestOccupant < ActionController::TestCase
#  
#  def setup
#    @controller = OccupantsController.new
#  end
#
#  test "occupant attributes must not be empty" do 
#    occupant = Occupant.new
#    assert occupant.invalid?
#    assert occupant.errors[:id].any?
#    assert occupant.errors[:alias].any?
#    assert occupant.errors[:current_location].any?
#  end
#  
#  test "occupant's current location must exist" do
#    current_location = 0
#    occupant = Occupant.new(:id => 1,
#                            :alias => "Superman",
#                            :current_location => current_location)
#    while current_location > 10000
#      assert occupant.current_location.valid?, "#{name} shouldn't be invalid"
#      current_location += 100
#    end
#    while current_location >100000
#      assert occupant.current_location.valid?, "#{name} shouldn't be valid"
#      current_location +=100
#    end
#  end
#  
#end