require 'rails_helper'

RSpec.describe "plays/new", type: :view do
  before(:each) do
    assign(:play, Play.new(
      :user => nil,
      :game => nil,
      :memory => "MyString",
      :role => 1,
      :result => 1
    ))
  end

  it "renders new play form" do
    render

    assert_select "form[action=?][method=?]", plays_path, "post" do

      assert_select "input[name=?]", "play[user_id]"

      assert_select "input[name=?]", "play[game_id]"

      assert_select "input[name=?]", "play[memory]"

      assert_select "input[name=?]", "play[role]"

      assert_select "input[name=?]", "play[result]"
    end
  end
end
