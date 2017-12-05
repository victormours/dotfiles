entry = ARGV.last

if entry
  File.open("tmp/journal.txt", "a") do |f|
    f.puts "#{Time.now.to_s} - #{`git rev-parse --abbrev-ref HEAD`.strip}: #{entry}"
  end
else
  puts File.readlines("tmp/journal.txt")
end
