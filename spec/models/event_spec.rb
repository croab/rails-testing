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
  describe "title" do
    it "should have a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "can have a title with 2 characters" do
      subject.title = "A"*2
      expect(subject).to be_valid
    end

    it "should have a title longer than 2 characters" do
      subject.title = "A"
      expect(subject).to_not be_valid
    end

    it "can have a title with 50 characters" do
      subject.title = "A" * 50
      expect(subject).to be_valid
    end

    it "should have a title <= 50 characters" do
      subject.title = "A" * 51
      expect(subject).to_not be_valid
    end
  end

  describe "description" do
    it "should have a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it "can have a description of 10 characters" do
      subject.description = "A" * 10
      expect(subject).to be_valid
    end

    it "should have a description >= 10 characters" do
      subject.description = "A" * 9
      expect(subject).to_not be_valid
    end

    it "should have a description <= 200 characters" do
      subject.description = "A" * 201
      expect(subject).to_not be_valid
    end
  end

  describe "price" do
    it "should have a price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it "should have a price than is an integer" do
      subject.price = "Hi"
      expect(subject).to_not be_valid
    end

    it "should have a price >= 0" do
      subject.price = -1
      expect(subject).to_not be_valid
    end

    it "should have a price <= 200" do
      subject.price = 201
      expect(subject).to_not be_valid
    end
  end

  describe "date" do
    it "should have a date" do
      subject.date = nil
      expect(subject).to_not be_valid
    end

    it "should have a date after the present date" do
      subject.date = Date.today - 1
      expect(subject).to_not be_valid
    end
  end
end
