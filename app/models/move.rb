class Move < ApplicationRecord
  belongs_to :play

  validates :request, presence: true, length: { is: 4 }
  validate :request_must_have_unique_chars

  before_create :generate_response

  def request_must_have_unique_chars
    return if request.nil?
    errors.add :request, :unique unless request_unique_chars_count == 4
  end

  def generate_response
    guessed, correct = [0, 0]
    request.each_char do |digit|
      guessed += 1 if play.memory.include?(digit)
      correct += 1 if play.memory.index(digit) == request.index(digit)
    end
    self.response = "#{guessed}#{correct}"
  end

  def request_unique_chars_count
    request.chars.to_a.uniq.size
  end
end
