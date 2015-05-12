#!/bin/env ruby

puts 1000.downto(2).find { |n|
  (n.to_s.reverse == n.to_s) && (2..Math.sqrt(n)).none? { |d| (n % d == 0) }
}
