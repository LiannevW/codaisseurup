require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event }

  it "shows the event's details" do
    visit event_url(event)

    expect(page).to have_text(event.location)
    expect(page).to have_text(event.description)
    expect(page).to have_text("Food")
    #expect(page).to have_text(event.includes_drinks)
  end
end
