class User < ApplicationRecord
  include Clearance::User

  has_many :plays
  has_many :games, through: :plays

  def winner_of?(game)
    play = plays.find_by game: game
    play.winner?
  end
end
