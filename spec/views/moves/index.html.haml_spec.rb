require 'rails_helper'

RSpec.describe "moves/index", type: :view do
  before(:each) do
    assign(:moves, [
      Move.create!(
        :play => nil,
        :request => "Request",
        :response => "Response"
      ),
      Move.create!(
        :play => nil,
        :request => "Request",
        :response => "Response"
      )
    ])
  end

  it "renders a list of moves" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Request".to_s, :count => 2
    assert_select "tr>td", :text => "Response".to_s, :count => 2
  end
end
