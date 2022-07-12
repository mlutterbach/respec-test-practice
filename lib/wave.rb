def wave(str)
  str.chars.map.with_index(0) { |letter, index| letter == " " ? next : str[0...index] + letter.upcase + str[index + 1..str.size] }.compact
end
