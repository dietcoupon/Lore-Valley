require 'spec_helper'

describe "occupants/index.html.erb" do
  before(:each) do
    assign(:occupants, [
      stub_model(Occupant,
        :id => 1,
        :name => "Name",
        :current_location => 1
      ),
      stub_model(Occupant,
        :id => 1,
        :name => "Name",
        :current_location => 1
      )
    ])
  end

  it "renders a list of occupants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
