class GenerateGenres < ActiveRecord::Migration
  def up
    Genre.new(name: "Card").save
    Genre.new(name: "Tower Defense").save
    Genre.new(name: "Casual").save
    Genre.new(name: "Puzzle").save
    Genre.new(name: "Runner").save
    Genre.new(name: "RTS").save
    Genre.new(name: "Arcade").save
    Genre.new(name: "Racing").save
    Genre.new(name: "MMO").save
    Genre.new(name: "RPG").save
    Genre.new(name: "Shooter").save
    Genre.new(name: "Action").save
    Genre.new(name: "Adventure").save
    Genre.new(name: "Simulation").save
    Genre.new(name: "Sports").save
    Genre.new(name: "All").save
  end
end
