#!/usr/bin/env ruby
# suite.rb -- spreadsheet -- 01.01.2012 -- y.grauwoelfchen@gmail.com
# suite.rb -- spreadsheet -- 26.07.2011 -- zdavatz@ywesee.com

require 'rubygems' if RUBY_VERSION < '1.9'
require 'find'

here = File.dirname(__FILE__)

$: << here

Find.find(here) do |path|
#  if /(?<!suite)\.rb$/o.match(file)
    #from Roel van der Hoorn vanderhoorn@gmail.com
    #should work for Ruby 1.8 and 1.9, without Oniguruma
#  if /(?:^|\/)(?!suite)[^\/]+\.rb$/o
  next if File.directory?(path)
  if path !~ /suite\.rb$/o && path =~ /\.rb$/o
    require File.expand_path(path)
	end
end
