# -*- coding: utf-8 -*-

require 'benchmark'

puts Benchmark.measure {
	100.times do |i|
		$LOAD_PATH.each do |path|
			break if File.exist?(path + "/data_empty/test#{i}.rb")
		end
	end
}
