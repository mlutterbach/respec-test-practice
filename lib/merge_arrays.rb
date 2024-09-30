# Given 2 sorted array, join them, and make sure they are sorted

def merge_arrays(arr1, arr2)
  "#{(arr1 + arr2).sort()}"
end

def merge_sorted_arrays(array1, array2)
  merged_array = []
  i = 0
  j = 0

  # Check for empty arrays
  return array2 if array1.empty?
  return array1 if array2.empty?

  while i < array1.length || j < array2.length
    if j >= array2.length || (i < array1.length && array1[i] < array2[j])
      merged_array << array1[i]
      i += 1
    else
      merged_array << array2[j]
      j += 1
    end
  end

  "#{merged_array}"
end

arr1 = [0,3,4,31,35,100]
arr2 = [4,6,30]
puts merge_arrays(arr1, arr2)
puts merge_sorted_arrays(arr1, arr2)
