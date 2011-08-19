require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :id => 1,
      :alias => "MyString",
      :email => "MyString",
      :race => 1,
      :class => 1,
      :sex => false,
      :preference => false,
      :password => "MyString",
      :alignment => 1
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_id", :name => "user[id]"
      assert_select "input#user_alias", :name => "user[alias]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_race", :name => "user[race]"
      assert_select "input#user_class", :name => "user[class]"
      assert_select "input#user_sex", :name => "user[sex]"
      assert_select "input#user_preference", :name => "user[preference]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_alignment", :name => "user[alignment]"
    end
  end
end
