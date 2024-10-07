# to square every digit of a number and concatenate them.

def square_digits num
  # take number and split into it's digits
  arr = num.to_s.chars.map(&:to_i)
  # multiply by itself (square it)
  arr_square = arr.map do |digit|
    digit * digit
  end
  # join them into 1 digit and return interger
  arr_square.join.to_i
end

def square_digits2(num)
  # take number and split it's digits
  arr = []
  while(num > 0)
    digit = num % 10
    num /= 10
    arr << digit
  end

  arr.map {|i| i **2 }.reverse.join.to_i
end
