# -*- coding: utf-8 -*-

require 'benchmark'

str = nil

puts Benchmark.measure {
	100.times do |i|
		str = File.read("data_class/test#{i}.rb")
	end
}
