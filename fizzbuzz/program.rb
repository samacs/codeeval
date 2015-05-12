#!/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  puts (1..(line.split[2].to_i)).to_a.map! { |i|
    o = ''
    o += 'F' if (i % line.split[0].to_i).zero?
    o += 'B' if (i % line.split[1].to_i).zero?
    o.empty? ? i : o
  }.join ' '
end
