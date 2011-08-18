require 'spec_helper'

describe "occupants/show.html.erb" do
  before(:each) do
    @occupant = assign(:occupant, stub_model(Occupant,
      :id => 1,
      :name => "Name",
      :current_location => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
