#!/usr/bin/env ruby

ARGF.each do |line|
  print line.gsub("<%", "").gsub("%>", "")
    .gsub(/<\/[^>]*>/, '').gsub("<", "").gsub(">", "").gsub(/^\n$/, "")
    .gsub(/div class='([^']+)'/, '.\1')
    .gsub(/class='([^']+)'/, '.\1')
    .gsub(/id='([^']+)'/, '#\1')
end
