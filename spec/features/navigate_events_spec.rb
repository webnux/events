require "rails_helper"

describe "Navigating events" do
  it "allows navigation from the detail page to the listing page" do

    event = Event.create(name: "Event 1")

    visit event_url(event)
    #visit "http://example.com/events/#{event1.id}"
    click_link "All Events"
    
    expect(current_path).to eq(events_path)

  end
end