require 'fileutils'
require 'erb'

dir = "data_empty"
FileUtils.rm_rf(dir)
FileUtils.mkdir_p(dir);

100.times do |index|
	File.open(dir + "/test#{index}.rb", "w") do |file|
		file.puts("# -*- coding: utf-8 -*-")
	end
end

dir = "data_class"
FileUtils.rm_rf(dir)
FileUtils.mkdir_p(dir);

data_class_erb = ERB.new(File.read("erb/data_class.erb"), nil, "%")

100.times do |index|
	File.open(dir + "/test#{index}.rb", "w") do |file|
		file.puts("# -*- coding: utf-8 -*-")
		file.write(data_class_erb.result(binding))
	end
end

dir = "data_class_onefile"
FileUtils.rm_rf(dir)
FileUtils.mkdir_p(dir);

File.open(dir + "/test.rb", "w") do |file|
	100.times do |index|
		file.puts("# -*- coding: utf-8 -*-")
		file.write(data_class_erb.result(binding))
	end
end
