require File.dirname(__FILE__) + '/../test_helper'
require "occupants_controller"

class TestOccupant < ActionController::TestCase
  
  def setup
    @controller = OccupantsController.new
  end

  test "occupant attributes must not be empty" do 
    occupant = Occupant.new
    assert occupant.invalid?
    assert occupant.errors[:id].any?
    assert occupant.errors[:alias].any?
    assert occupant.errors[:current_location].any?
  end
  
end