require 'rails_helper'

RSpec.describe "moves/new", type: :view do
  before(:each) do
    assign(:move, Move.new(
      :play => nil,
      :request => "MyString",
      :response => "MyString"
    ))
  end

  it "renders new move form" do
    render

    assert_select "form[action=?][method=?]", moves_path, "post" do

      assert_select "input[name=?]", "move[play_id]"

      assert_select "input[name=?]", "move[request]"

      assert_select "input[name=?]", "move[response]"
    end
  end
end
