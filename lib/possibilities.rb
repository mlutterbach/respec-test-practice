# Given a string containing 0's, 1's and one or more '?', where ? is a wildcard that can be 0 or 1.

# Return an array containing all the possibilities you can reach substituing the ? for a value.

def iterative_wildcard_possibilities(string)
  possibilities = [string]

  while possibilities.any? { |str| str.include?("?") }
    possibilities = possibilities.flat_map do |str|
      if str.include?("?")
        [str.sub("?", "0"), str.sub("?", "1")]
      else
        [str]
      end
    end
  end
  possibilities
end


def recursive_wildcard_possibilities(input)
  return [input] unless input.include?('?')

  recursive_wildcard_possibilities(input.sub('?', '0')) + recursive_wildcard_possibilities(input.sub('?', '1'))
end
