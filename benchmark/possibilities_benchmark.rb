require 'benchmark'
require_relative '../lib/possibilities.rb'

test_strings = [
  '101?',
  '1?1?',
  '?101',
  '1?0?1?',
  '????',
]

Benchmark.bm(15) do |x|
  test_strings.each do |str|
    x.report("Recursive (#{str})") { recursive_wildcard_possibilities(str) }
    x.report("Iterative (#{str})") { iterative_wildcard_possibilities(str) }
  end
end
