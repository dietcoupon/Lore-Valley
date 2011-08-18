require 'spec_helper'

describe "locations/edit.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :placement => 1
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "textarea#location_description", :name => "location[description]"
      assert_select "input#location_image_url", :name => "location[image_url]"
      assert_select "input#location_placement", :name => "location[placement]"
    end
  end
end
