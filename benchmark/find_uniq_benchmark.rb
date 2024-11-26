require 'benchmark'
require_relative '../lib/find_uniq.rb'

small_array = [1,1,1,1,2]
medium_array = [1] * 99_999 + [2]
large_array = [1] * 999_999 + [2]
very_large_array = [1] * 9_999_999 + [2]

Benchmark.bm do |x|
  x.report("find_uniq_1 - small:") { find_uniq_1(small_array) }
  x.report("find_uniq_2 - small:") { find_uniq_2(small_array) }
  x.report("find_uniq_3 - small:") { find_uniq_3(small_array) }

  x.report("find_uniq_1 - medium:") { find_uniq_1(medium_array) }
  x.report("find_uniq_2 - medium:") { find_uniq_1(medium_array) }
  x.report("find_uniq_3 - medium:") { find_uniq_1(medium_array) }

  x.report("find_uniq_1 - large:") { find_uniq_1(large_array) }
  x.report("find_uniq_2 - large:") { find_uniq_1(large_array) }
  x.report("find_uniq_3 - large:") { find_uniq_1(large_array) }

  x.report("find_uniq_1 - very large:") { find_uniq_1(very_large_array) }
  x.report("find_uniq_2 - very large:") { find_uniq_1(very_large_array) }
  x.report("find_uniq_3 - very large:") { find_uniq_1(very_large_array) }

end
