# a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.

def increment_string(input)
  match = input.match(/(.*?)(\d*)$/)
  prefix = match[1]
  number = match[2]

  if number.empty?
    return prefix + '1'
  end

  incremented_number = (number.to_i + 1).to_s.rjust(number.length, '0')

  prefix + incremented_number
end
