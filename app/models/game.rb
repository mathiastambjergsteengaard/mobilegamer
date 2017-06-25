class Game < ActiveRecord::Base
  has_and_belongs_to_many :tags
  def genres
    ["Card", "Tower Defense", "Casual", "Puzzle", "Runner", "RTS", "Arcade", "Racing", "MMO", "RPG", "Shooter", "Action", "Adventure", "Simulation", "Sports"]
  end
end