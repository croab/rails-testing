require 'rails_helper'
require "date"

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        title: "Title",
        description: "Description",
        price: 2,
        date: Date.today
      ),
      Event.create!(
        title: "Title",
        description: "Description",
        price: 2,
        date: Date.today
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select ".title", /Title:/, count: 2
    assert_select ".description", /Description:/, count: 2
    assert_select ".price", /2/, count: 2
    assert_select ".date", /#{Date.today.to_s}/, count: 2
  end
end
