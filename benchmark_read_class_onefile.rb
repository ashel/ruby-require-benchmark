# -*- coding: utf-8 -*-

require 'benchmark'

str = nil

puts Benchmark.measure {
	str = File.read("data_class_onefile/test.rb")
}
