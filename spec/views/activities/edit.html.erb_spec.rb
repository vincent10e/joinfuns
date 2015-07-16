require 'rails_helper'

RSpec.describe "activities/edit", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :title => "MyString",
      :description => "MyText",
      :location => "MyString",
      :organizer => "MyString",
      :related_link => "MyString"
    ))
  end

  it "renders the edit activity form" do
    render

    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do

      assert_select "input#activity_title[name=?]", "activity[title]"

      assert_select "textarea#activity_description[name=?]", "activity[description]"

      assert_select "input#activity_location[name=?]", "activity[location]"

      assert_select "input#activity_organizer[name=?]", "activity[organizer]"

      assert_select "input#activity_related_link[name=?]", "activity[related_link]"
    end
  end
end
