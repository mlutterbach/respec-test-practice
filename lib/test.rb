def suma_factorial(n)
  sum = 0
  array = (1..n).to_a
  array.each{ |num| sum += (1..num).sum }
  return sum
end

def subdivide(arr, num)
  # take array and divide into equal parts
  # push index 0 numb into first array
  # push index 1 numb into second array
  # push index 2 numb into 3rd array
  # add num to index
  # push that into same index
  p arr


  # add_index = num
  # result = []
  # arr.each_with_index.select do |value, index|
  #   # p "#{counter_index} hello counter"
  #   p index
  #   p value
  #   p result
  #   if add_index <= arr.size
  #     result << value[index + add_index]
  #   end
  #   add_index += num
  # end
end
