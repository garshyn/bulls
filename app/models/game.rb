class Game < ApplicationRecord
  has_many :plays
  has_many :users, through: :plays

  enum state: [ :created, :canceled, :accepted, :rejected, :waiting, :playing, :aborted, :finished, :expired ]

end
