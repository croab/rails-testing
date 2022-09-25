require 'rails_helper'

RSpec.describe Event, type: :model do
  subject {
    Event.new(
      title: "New Event",
      description: "Good event!",
      price: 50,
      date: "Sun, 25 Sep 2022"
    )
  }
  before { subject.save! }

  # Tests
  it "should have a title"
  it "should have a title longer than 2 characters"
  it "should have a title less than 50 characters"
  it "should have a description"
  it "should have a description longer than 10 characters"
  it "should have a description less than 200 characters"
  it "should have a price"
  it "should have a price than is an integer"
  it "should have a price greater than 0"
  it "should have a price less than 200"
  it "should have a date"
  it "should have a date after the present date"
end
