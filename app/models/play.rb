class Play < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :moves

  before_create :generate_goal

  CHARS = %w[1 2 3 4 5 6 7 8 9 0]
  LENGTH = 4

  def generate_goal
    self.goal = ''
    while goal.length != LENGTH do
      char = CHARS.sample
      self.goal += char unless goal.include?(char)
    end
  end
end
