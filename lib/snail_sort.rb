def snail_sort(array)
  result = []
  return result if array.empty? # Return empty if input is empty

  top, bottom = 0, array.length - 1
  left, right = 0, array[0].length - 1

  while top <= bottom && left <= right
    # Traverse from left to right along the top row
    (left..right).each do |i|
      result << array[top][i]
    end
    top += 1

    # Traverse from top to bottom along the right column
    (top..bottom).each do |i|
      result << array[i][right]
    end
    right -= 1

    # Traverse from right to left along the bottom row
    if top <= bottom
      (right).downto(left).each do |i|
        result << array[bottom][i]
      end
      bottom -= 1
    end

    # Traverse from bottom to top along the left column
    if left <= right
      (bottom).downto(top).each do |i|
        result << array[i][left]
      end
      left += 1
    end
  end

  result
end

def snail_sort2(array)
  array.empty? ? [] : array.shift + snail_sort2(array.transpose.reverse)
end
