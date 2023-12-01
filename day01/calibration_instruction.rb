class CalibrationInstruction
  ALLOWED_VALUES = {
    "one"   => 1,
    "1"     => 1,
    "two"   => 2,
    "2"     => 2,
    "three" => 3,
    "3"     => 3,
    "four"  => 4,
    "4"     => 4,
    "five"  => 5,
    "5"     => 5,
    "six"   => 6,
    "6"     => 6,
    "seven" => 7,
    "7"     => 7,
    "eight" => 8,
    "8"     => 8,
    "nine"  => 9,
    "9"     => 9
  }

  def initialize(values)
    @values = values
  end

  def calibration_value
    allowed_values_keys = ALLOWED_VALUES.map { |rule, _| rule }
    matcher = /^(#{allowed_values_keys.join("|")})/
    digits = (0..@values.size).map do |position|
      ALLOWED_VALUES[(matcher.match(@values[position..-1]) || [])[0]]
    end.flatten.compact

    "#{digits[0]}#{digits[-1]}".to_i
  end
end
