require 'rails_helper'

RSpec.describe "activities/index", type: :view do
  before(:each) do
    assign(:activities, [
      Activity.create!(
        :title => "Title",
        :description => "MyText",
        :location => "Location",
        :organizer => "Organizer",
        :related_link => "Related Link"
      ),
      Activity.create!(
        :title => "Title",
        :description => "MyText",
        :location => "Location",
        :organizer => "Organizer",
        :related_link => "Related Link"
      )
    ])
  end

  it "renders a list of activities" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Organizer".to_s, :count => 2
    assert_select "tr>td", :text => "Related Link".to_s, :count => 2
  end
end
