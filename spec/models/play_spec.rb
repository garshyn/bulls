require 'rails_helper'

RSpec.describe Play, type: :model do

  it "generates goal when created" do
    play = create :play
    expect(play.goal).not_to be_nil
    expect(play.goal.size).to eq 4
  end
end
