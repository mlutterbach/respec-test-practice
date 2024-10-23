require 'benchmark'

def method_1(s)
  value = Hash[('a'..'z').map.with_index { |letter, index| [letter, index + 1] }]
  words = s.split(/[aeiou]/)
  max_value = words.map do |word|
    word.chars.map { |letter| value[letter] }.compact.sum
  end.max

  max_value || 0
end

def method_2(s)
  s.split(/[aeiou]/).map { |x| x.sum - x.size * 96 }.max
end

# Sample input for testing
input = "example string with various vowels"

# Benchmarking
iterations = 1_000_000
Benchmark.bm(10) do |x|
  x.report("Method 1:") { iterations.times { method_1(input) } }
  x.report("Method 2:") { iterations.times { method_2(input) } }
end
