# -*- coding: utf-8 -*-

require 'benchmark'

str = nil

puts Benchmark.measure {
	File.open("data_class_onefile/test.rb", "rb") do |file|
		str = file.read
	end
}
