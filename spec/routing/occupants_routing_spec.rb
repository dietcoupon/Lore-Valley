require "spec_helper"

describe OccupantsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/occupants" }.should route_to(:controller => "occupants", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/occupants/new" }.should route_to(:controller => "occupants", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/occupants/1" }.should route_to(:controller => "occupants", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/occupants/1/edit" }.should route_to(:controller => "occupants", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/occupants" }.should route_to(:controller => "occupants", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/occupants/1" }.should route_to(:controller => "occupants", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/occupants/1" }.should route_to(:controller => "occupants", :action => "destroy", :id => "1")
    end

  end
end
