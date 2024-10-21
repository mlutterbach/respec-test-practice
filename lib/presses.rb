def presses(phrase)
  counter = 0
  phrase.upcase.chars.each do |char|
    case char
      when 'A', 'D', 'G', 'J', 'M', 'P', 'T', 'W', '*', '#', ' ', '1'
        counter += 1
      when 'B', 'E', 'H', 'K', 'N', 'Q', 'U' ,'X', '0'
        counter += 2
      when 'C', 'F', 'I', 'L', 'O', 'R', 'V', 'Y'
        counter += 3
      when 'S', 'Z', '2', '3', '4', '5', '6', '8'
        counter += 4
      when '7', '9'
        counter += 5
      end
    end
  counter
end
