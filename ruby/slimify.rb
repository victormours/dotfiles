#!/usr/bin/env ruby

ARGF.map do |line|
  line.gsub("<%", "").gsub("%>", "")
    .gsub(/<\/[^>]*>/, '').gsub("<", "").gsub(">", "")
    .gsub(/id='([^']+)'/, '#\1')
    .gsub(/^\s+\n/, "")
end.map do |line|
  match = line.match(/ class=['"]([^']+)['"]/)
  if match
    classes = "." + match[1].gsub(" ", ".")
    line.gsub(/ class=['"]([^']+)['"]/, classes)
  else
    line
  end
end.map do |line|
  line.gsub(/div\./, ".")
end.map do |line|
  line.gsub(/ (\w+=['"]\w+['"])/, '[\1]')
    .gsub("][", ' ')
end.each do |line|
  print line
end
