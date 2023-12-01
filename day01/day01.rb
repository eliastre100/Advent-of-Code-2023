#!/usr/bin/env ruby

require_relative "calibration_document"
require_relative "calibration_instruction"

content = File.read(ARGV[0])

document = CalibrationDocument.new

content.each_line do |line|
  document.add_instruction CalibrationInstruction.new(line)
end

puts "Calibration sum: #{document.calibration_sum}"
