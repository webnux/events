require "rails_helper"

describe "Viewing the list of events" do
  it "shows the event" do

    event1 = Event.create(name: "Event 1")
    event2 = Event.create(name: "Event 2")
    event3 = Event.create(name: "Event 3")

    visit events_url
    
    expect(page).to have_text("3 Events")
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)
  end
end