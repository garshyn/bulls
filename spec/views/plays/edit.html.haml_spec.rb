require 'rails_helper'

RSpec.describe "plays/edit", type: :view do
  before(:each) do
    @play = assign(:play, Play.create!(
      :user => nil,
      :game => nil,
      :memory => "MyString",
      :role => 1,
      :result => 1
    ))
  end

  it "renders the edit play form" do
    render

    assert_select "form[action=?][method=?]", play_path(@play), "post" do

      assert_select "input[name=?]", "play[user_id]"

      assert_select "input[name=?]", "play[game_id]"

      assert_select "input[name=?]", "play[memory]"

      assert_select "input[name=?]", "play[role]"

      assert_select "input[name=?]", "play[result]"
    end
  end
end
