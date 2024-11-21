require 'benchmark'

def alphabet_position(text)
  result = []
  text.downcase.bytes.map do |letter|
    result << letter - 96 if letter >= 97 && letter <= 122
  end
  result.join(" ")
end

def alphabet_position2(text)
  text.downcase.scan(/[a-z]/).map { |char| char.ord - 'a'.ord + 1 }.join(" ")
end

test_strings = [
  "a",
  "The quick brown fox jumps over the lazy dog",
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  "a" * 1_000
]

Benchmark.bm do |x|
  test_strings.each do |test_string|
    x.report("alphabet_position (#{test_string.length} chars):") do
      100.times { alphabet_position(test_string) }
    end

    x.report("alphabet_position2 (#{test_string.length} chars):") do
      100.times { alphabet_position2(test_string) }
    end
  end
end
