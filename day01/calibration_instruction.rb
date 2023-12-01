class CalibrationInstruction
  def initialize(values)
    @values = values
  end

  def calibration_value
    digits = @values.split("").select { |char| "0123456789".include?(char) }

    "#{digits[0]}#{digits[-1]}".to_i
  end
end
