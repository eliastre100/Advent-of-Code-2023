require "rspec"
require_relative '../../day02/round'

RSpec.describe Round do
  describe ".initialize" do
    it "parses the correct quantities" do
      subject = described_class.new("3 blue, 4 red")

      expect(subject.blue).to be 3
      expect(subject.red).to be 4
      expect(subject.green).to be 0
    end
  end
end
