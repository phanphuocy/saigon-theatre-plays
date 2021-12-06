require "rails_helper"
require "spec_helper"

describe "A play" do
  it "is free if the price is $0" do
    play = Play.create(play_attributes(from_price: 0.00))
    expect(play.free?).to eq(true)
  end

  it "is not free if the price is non-$0" do
    play = Play.create(play_attributes(from_price: 2.00))
    expect(play.free?).to eq(false)
  end

  it "is free if the price is blank" do
    play = Play.create(play_attributes(from_price: nil))
    expect(play.free?).to eq(true)
  end
end