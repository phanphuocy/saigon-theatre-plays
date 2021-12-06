require "rails_helper"
require "spec_helper"

describe "Navigating plays" do
  it "allows navigation from the detail page to the listing page" do
    play = Play.create(play_attributes)
    visit play_url(play)
    click_link "All plays"
    expect(current_path).to eq(plays_path)
  end

  it "allow navigation from the listing page to the detail page" do
    play = Play.create(play_attributes)
    visit plays_url
    click_link play.name
    expect(current_path).to eq(play_path(play))
  end
end