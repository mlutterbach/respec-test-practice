# here is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.

# The tests contain some very huge arrays, so think about performance.

def find_uniq_1(arr)
  hash = Hash.new(0)
  arr.each do |elem|
    hash[elem] += 1
  end
  hash.key(1)
end

def find_uniq_2(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end

def find_uniq_3(arr)
  arr.sort!
  if arr[0] == arr[1]
    return arr[-1]
  else
    return arr[0]
  end
end
