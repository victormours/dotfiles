#!/usr/bin/env ruby

ARGF.each do |line|
  print line.gsub(/<\/[^>]*>/, '').gsub("<", "").gsub(">", "")
end
