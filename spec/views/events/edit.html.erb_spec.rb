require 'rails_helper'
require 'date'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      title: "MyString",
      description: "MyStringHere",
      price: 1,
      date: Date.today
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[title]"

      assert_select "input[name=?]", "event[description]"

      assert_select "input[name=?]", "event[price]"
    end
  end
end
