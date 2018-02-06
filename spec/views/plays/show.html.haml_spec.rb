require 'rails_helper'

RSpec.describe "plays/show", type: :view do
  before(:each) do
    @play = assign(:play, Play.create!(
      :user => nil,
      :game => nil,
      :memory => "Memory",
      :role => 2,
      :result => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Memory/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
