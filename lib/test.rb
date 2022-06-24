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
  array = []
  num_arr = (1..num).to_a
  num_arr.each do |n|
    array << (0... arr.length).select{ |x| x % num == (num - n) }.map { |y| arr[y] }
  end
  return array.reverse
end
