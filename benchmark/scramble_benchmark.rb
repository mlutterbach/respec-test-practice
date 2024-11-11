require 'benchmark'

# Define the functions
def scramble(s1, s2)
  chars_hash = Hash.new(0)
  s1.chars.each { |char| chars_hash[char] += 1 }
  s2.chars.each do |char|
    chars_hash[char] -= 1
    return false if chars_hash[char] < 0
  end
  true
end

def scramble2(s1, s2)
  s2.chars.uniq.all? { |x| s2.count(x) <= s1.count(x) }
end

s1 = 'a' * 1_000_000 + 'b' * 500_000
s2 = 'a' * 500_000 + 'b' * 250_000

Benchmark.bm do |x|
  x.report("scramble: ") { scramble(s1, s2) }
  x.report("scramble2: ") { scramble2(s1, s2) }
end
