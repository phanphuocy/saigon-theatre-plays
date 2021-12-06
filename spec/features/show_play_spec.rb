require "rails_helper"
require "spec_helper"

describe "Viewing an individual play" do
  it "show the play's detail" do
    play = Play.create(name: "Cậu Đồng", description: "Lorem Ipsum", from_price: 10.00, starts_at: 10.day.from_now)
    visit "http://example.com/plays/#{play.id}"

    expect(page).to have_text(play.name)
    expect(page).to have_text(play.description)
    expect(page).to have_text(play.starts_at)
  end

  it "show the price if the price is not $0" do
    play = Play.create(play_attributes(from_price: 20.00))
    visit play_url(play)
    expect(page).to have_text("$20.00")
  end

  it "show 'Free' if the price is $0" do
    play = Play.create(play_attributes(from_price: 0.00))
    visit play_url(play)
    expect(page).to have_text("Free")
  end
end