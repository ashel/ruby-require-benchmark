# -*- coding: utf-8 -*-

require 'benchmark'

puts Benchmark.measure {
	20.times do
		100.times do |i|
			File.exist?("data_file_exist/test#{i}/test#{i}.rb")
		end
	end
}
