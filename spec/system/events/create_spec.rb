require 'rails_helper'

RSpec.describe 'create event', type: :system do
  scenario 'empty title, description, price and date' do
    visit new_event_path
    click_button 'Submit'

    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Description can't be blank")
    expect(page).to have_content("Price can't be blank")
    expect(page).to have_content("Date can't be blank")
    expect(page).to have_content("Title is too short (minimum is 2 characters)")
    expect(page).to have_content("Description is too short (minimum is 10 characters)")
    expect(page).to have_content("Price is not a number")

    expect(Event.count).to eq(0)
  end
end
