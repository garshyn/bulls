require 'rails_helper'

RSpec.describe Move, type: :model do
  describe "validation" do
    subject { build :move }
    it "is invalid without request" do
      subject.request = nil
      expect(subject).not_to be_valid
    end
    it { is_expected.to be_valid }
    it "is invalid unless request has 4 digits" do
      subject.request = '123'
      expect(subject).not_to be_valid
      subject.request = '12345'
      expect(subject).not_to be_valid
    end
    it "is invalid unless all digits are unique" do
      subject.request = '1233'
      expect(subject).not_to be_valid
    end
  end

  describe "generate_response" do
    it "creates response automatically" do
      play = create :play, memory: '1234'
      move = play.moves.create request: '1234'
      expect(move.response).to eq '44'
    end
    it do
      play = create :play, memory: '1234'
      move = play.moves.create request: '1230'
      expect(move.response).to eq '33'
    end
    it do
      play = create :play, memory: '1234'
      move = play.moves.create request: '5678'
      expect(move.response).to eq '00'
    end
    it do
      play = create :play, memory: '1234'
      move = play.moves.create request: '3201'
      expect(move.response).to eq '31'
    end
  end
end
