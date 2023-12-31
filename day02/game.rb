require_relative 'round'

class Game
  attr_reader :id, :rounds

  def initialize(definition)
    @id = definition.split(":").first.split(" ").last.to_i
    @rounds = definition.split(":").last.split(";").map do |round_definition|
      Round.new(round_definition)
    end
  end

  def min_known_quantities
    {
      blue: @rounds.map(&:blue).max,
      red: @rounds.map(&:red).max,
      green: @rounds.map(&:green).max
    }
  end

  def minimum_power
    min_known_quantities.values.inject(&:*)
  end
end
