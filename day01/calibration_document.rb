class CalibrationDocument
  attr_reader :instructions

  def initialize
    @instructions = []
  end

  def add_instruction(instruction)
    @instructions << instruction
  end

  def calibration_sum
    @instructions.inject(0) { |acc, instruction| acc + instruction.calibration_value }
  end
end
