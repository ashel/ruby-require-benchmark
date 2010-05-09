# -*- coding: utf-8 -*-

#require "rubygems"

alias :require_original :require

$require_success_files = []
$require_fail_files = []

def require(feature)
	ret = require_original(feature)
	if ret
		$require_success_files << feature
	else
		$require_fail_files << feature
	end
	ret
end

#require "rubygems"
require "rexml/document"
#require 'sqlite3'
#require 'twitter'

p $require_success_files.size
p $require_fail_files.size
