require 'benchmark'
require_relative '../lib/rgb.rb'

Benchmark.bm do |x|
    x.report("Method 1:") { 100_000.times { rgb(255, 300, -20) } }
    x.report("Method 2:") { 100_000.times { rgb_2(255, 300, -20) } }
end
