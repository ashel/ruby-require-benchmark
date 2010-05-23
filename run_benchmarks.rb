# -*- coding: utf-8 -*-

require 'benchmark'

benchmarks = Dir.glob("benchmark_*.rb")

ruby_command = "ruby"
if ARGV.size > 0
	ruby_command = ARGV[0]
end

if RUBY_VERSION < "1.9.0"
	# 1.8系では実行できないベンチマークを除く
	benchmarks.delete("benchmark_compile_class_onefile.rb")
	benchmarks.delete("benchmark_read_class_onefile_windows31j.rb")
end

name_max = benchmarks.map{|item| item.length}.max - 13

puts " " * name_max + Benchmark::CAPTION
benchmarks.each do |path|
	name = path[10..-4]
	puts(name + " " * (name_max - name.length) + `#{ruby_command} #{path}`)
end
