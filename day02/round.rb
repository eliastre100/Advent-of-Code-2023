class Round
  attr_reader :blue, :green, :red

  def initialize(results)
    results = results.split(",").map do |color_result|
      qty, color = color_result.split(" ")
      [color, qty]
    end.to_h

    @blue = results["blue"].to_i
    @red = results["red"].to_i
    @green = results["green"].to_i
  end
end
