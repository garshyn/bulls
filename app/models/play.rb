class Play < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :moves
end