def parentheses_counter(string)
  # take string and split it into char
  # check that the first parentheses is not = )
  # count that for every (  theres is an )
  # make sure there's not an extra )
  # ignore other chars ( letters, punctuation etc)

  open = 0
  string.chars.each do |c|
    open += 1 if c == "("
    open -= 1 if c == ")"
    return false if open < 0
  end
  open == 0

  # return true if string.empty?

  # array = string.split('')
  # pos_left_par = array.find_index { |e| e == '(' } || 0
  # pos_right_par = array.find_index { |e| e == ')' } || 0

  # return false if pos_right_par < pos_left_par

  # parenthese_hash = Hash.new(0)
  # array.each do |elem|
  #   parenthese_hash[elem] += 1
  #   return false if parenthese_hash[')'] > parenthese_hash['(']
  # end
  # parenthese_hash['('] == parenthese_hash[')']
end
