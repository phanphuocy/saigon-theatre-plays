require 'rails_helper'
require "spec_helper"

describe "Viewing the list of plays" do
  it "shows the plays" do
    play1 = Play.create(name: "Cậu Đồng", from_price: 12.00, description: "Lorem Ipsum", starts_at: 10.day.from_now)
    play2 = Play.create(name: "Lời Nguyền Phù Thủy", from_price: 12.00, description: "Lorem Ipsum", starts_at: 10.day.from_now)
    play3 = Play.create(name: "Ác Nhân Cốc", from_price: 12.00, description: "Lorem Ipsum", starts_at: 10.day.from_now)
    visit "http://example.com/plays"
    expect(page).to have_text("Play")
    expect(page).to have_text(play1.name)
    expect(page).to have_text(play2.name)
    expect(page).to have_text(play3.name)
  end
end