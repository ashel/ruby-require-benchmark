# -*- coding: utf-8 -*-

require 'benchmark'

puts Benchmark.measure {
	100.times do |i|
		require "data_empty/test#{i}"
	end
}
