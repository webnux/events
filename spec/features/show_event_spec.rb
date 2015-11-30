require "rails_helper"

describe "Viewing an individual event" do
  it "shows the event's details" do

    event1 = Event.create(name: "Event 1")

    visit event_url(event1)
    #visit "http://example.com/events/#{event1.id}"
    
    expect(page).to have_text(event1.name)

  end
end