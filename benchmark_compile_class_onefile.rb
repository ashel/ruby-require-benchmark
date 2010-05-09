# -*- coding: utf-8 -*-

require 'benchmark'

str = File.read("data_class_onefile/test.rb")

puts Benchmark.measure {
	RubyVM::InstructionSequence.compile(str)
}
