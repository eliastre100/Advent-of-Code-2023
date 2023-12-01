require 'rspec'
require_relative '../../day01/calibration_instruction'

RSpec.describe CalibrationInstruction do
  describe "#calibration_value" do
    context "when there are only numbers" do
      it "returns the first and last digit" do
        subject = described_class.new("412")

        expect(subject.calibration_value).to be 42
      end
    end

    context "when there are characters at the edges" do
      it "returns the first and last digits" do
        subject = described_class.new("a4b1c2d")

        expect(subject.calibration_value).to be 42
      end

      it "return the first and last digit in letter" do
        subject = described_class.new("two1nine")

        expect(subject.calibration_value).to be 29
      end

      context "when one literal digit shares characters with an other" do
        it "considers both digits" do
          subject = described_class.new("2oneight")

          expect(subject.calibration_value).to be 28
        end
      end
    end
  end
end
