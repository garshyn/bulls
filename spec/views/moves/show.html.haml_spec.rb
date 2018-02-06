require 'rails_helper'

RSpec.describe "moves/show", type: :view do
  before(:each) do
    @move = assign(:move, Move.create!(
      :play => nil,
      :request => "Request",
      :response => "Response"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Request/)
    expect(rendered).to match(/Response/)
  end
end
