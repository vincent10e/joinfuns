require 'rails_helper'

RSpec.describe "activities/show", type: :view do
  before(:each) do
    @activity = assign(:activity, Activity.create!(
      :title => "Title",
      :description => "MyText",
      :location => "Location",
      :organizer => "Organizer",
      :related_link => "Related Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Organizer/)
    expect(rendered).to match(/Related Link/)
  end
end
