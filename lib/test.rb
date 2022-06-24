def suma_factorial(n)
  sum = 0
  array = (1..n).to_a
  array.each{ |num| sum += (1..num).sum }
  return sum
end

def subdivide(arr, num)
  array = []
  num_arr = (1..num).to_a
  num_arr.each do |n|
    array << (0... arr.length).select{ |x| x % num == (num - n) }.map { |y| arr[y] }
  end
  return array.reverse
end
