require 'spec_helper'

describe "occupants/edit.html.erb" do
  before(:each) do
    @occupant = assign(:occupant, stub_model(Occupant,
      :id => 1,
      :name => "MyString",
      :current_location => 1
    ))
  end

  it "renders the edit occupant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => occupants_path(@occupant), :method => "post" do
      assert_select "input#occupant_id", :name => "occupant[id]"
      assert_select "input#occupant_name", :name => "occupant[name]"
      assert_select "input#occupant_current_location", :name => "occupant[current_location]"
    end
  end
end
