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

test_string = "The sunset sets at twelve o' clock."

iterations = 100_000

Benchmark.bm do |x|
  x.report('alphabet_position:') do
    iterations.times { alphabet_position(test_string) }
  end

  x.report('alphabet_position2:') do
    iterations.times { alphabet_position2(test_string) }
  end
end
