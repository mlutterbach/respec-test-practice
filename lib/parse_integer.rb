def parse_int(string)
  digits = {
    "zero" => 0,
    "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
    'eleven' => 11, "twelve" => 12, 'thirteen' => 13, "fourteen" => 14, 'fifteen' => 15, 'sixteen' => 16, 'seventeen' => 17, 'eighteen' => 18, 'nineteen'=>19,
    'ten'=> 10, 'twenty' => 20, 'thirty' => 30, 'forty' => 40, 'fifty' => 50, 'sixty' => 60, 'seventy' => 70, 'eighty' => 80, 'ninety' => 90}
  multi = { 'hundred' => 100, 'thousand' => 1000, 'million' => 1000000}

  sum = 0
  string.split(/ |-/).each do |word|
    if digits[word]
      p sum += digits[word]
    end
    if multi[word]
      p sum += multi[word] * (sum % multi[word]) - (sum % multi[word])
    end
  end
  return sum
end
    #array_num << digits[word]
      ##array_num[0] = sum
      # if word == "hundred" || word == "thousand"
      #   (0...(index-1)).map do |i|
      #     sum = array_num[0...(index-1)].reduce(:+)
      #     p "sum: #{sum}"
      #     p array_num
      #   end
      #   sum = array_num.reduce(:*)
      #   p sum
      #   array_num.clear
      #   array_num << sum
      #   p "This is array #{array_num}"
      # end
  #   if word == 'thousand'
  #     p array_num
  #     p sum =  array_num.reduce(:+) * multi[word]
  #     array_num.clear
  #     new_arr << sum
  #   end
  #   if word == 'hundred'
  #     p array_num
  #     p sum = array_num.reduce(:+) * multi[word]
  #     array_num[index - 1] = sum
  #   end
  # end
  # sum = array_num.reduce(:+)
  # p new_arr
  # p array_num

  # p new_arr = string.split(/(thousand|hundred)/).collect(&:strip)
