#!/usr/bin/env ruby

require_relative "game"

content = File.read(ARGV[0])

games = content.each_line.map do |line|
  Game.new(line)
end

eligible_games = games.select do |game|
  max_quantities = game.max_known_quantities
  max_quantities[:red] <= 12 && max_quantities[:green] <= 13 && max_quantities[:blue] <=14
end

puts "Sum of eligible games id: #{eligible_games.sum(&:id)}"
