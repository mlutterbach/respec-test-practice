# Given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# "a" = 1, "b" = 2, etc.

def alphabet_position(text)
  result = []
  text.downcase.bytes.map do |letter|
    result << letter - 96 if letter >= 97 && letter <= 122
  end
  result.join(" ")
end
