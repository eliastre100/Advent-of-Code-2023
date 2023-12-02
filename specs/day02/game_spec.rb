require "rspec"
require_relative '../../day02/game'

RSpec.describe Game do
  describe ".initialize" do
    it "parses the id" do
      subject = described_class.new("Game 42: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green")

      expect(subject.id).to be 42
    end

    it "parses the correct rounds" do
      subject = described_class.new("Game 42: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green")

      expect(subject.rounds.size).to be 3
      expect(subject.rounds[0].blue).to be 3
      expect(subject.rounds[0].red).to be 4
      expect(subject.rounds[1].red).to be 1
      expect(subject.rounds[1].green).to be 2
      expect(subject.rounds[1].blue).to be 6
      expect(subject.rounds[2].green).to be 2
    end
  end

  describe "#max_known_quatntities" do
    it "return the correct number of known quantities for each color" do
      subject = described_class.new("Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red")

      expect(subject.max_known_quantities).to include(
                                                red: 20,
                                                blue: 6,
                                                green: 13
                                              )
    end
  end
end
