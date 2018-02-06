require 'rails_helper'

RSpec.describe "moves/edit", type: :view do
  before(:each) do
    @move = assign(:move, Move.create!(
      :play => nil,
      :request => "MyString",
      :response => "MyString"
    ))
  end

  it "renders the edit move form" do
    render

    assert_select "form[action=?][method=?]", move_path(@move), "post" do

      assert_select "input[name=?]", "move[play_id]"

      assert_select "input[name=?]", "move[request]"

      assert_select "input[name=?]", "move[response]"
    end
  end
end
