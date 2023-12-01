require 'rspec'
require_relative '../../day01/calibration_document'
require_relative '../../day01/calibration_instruction'

RSpec.describe CalibrationDocument do
  let(:subject) { described_class.new }

  describe "#add_instruction" do
    it "adds the instruction to the document" do
      instruction = CalibrationInstruction.new("42")

      expect {
        subject.add_instruction instruction
      }.to change { subject.instructions.count }.by 1
      expect(subject.instructions.last).to be instruction
    end
  end

  describe "#calibration_sum" do
    it "returns the sum of the calibration values" do
      subject.add_instruction(CalibrationInstruction.new("1abc2"))
      subject.add_instruction(CalibrationInstruction.new("pqr3stu8vwx"))

      expect(subject.calibration_sum).to be 50
    end
  end
end
