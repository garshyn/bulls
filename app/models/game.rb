class Game < ApplicationRecord
  has_many :plays
  has_many :users, through: :plays

  enum state: %i[created canceled accepted rejected waiting playing aborted finished expired]

  before_validation :generate_join_code

  def generate_join_code
    self.join_code = SecureRandom.base58(3).downcase
  end
end
