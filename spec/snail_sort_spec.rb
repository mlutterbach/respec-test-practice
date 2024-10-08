require 'snail_sort.rb'

describe '#snail_sort' do
  it 'Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise' do
    expect(snail_sort([[1,2,3],[4,5,6],[7,8,9]])).to eq([1,2,3,6,9,8,7,4,5])
  end

  it 'Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise' do
    expect(snail_sort([[1,2,3],[8,9,4],[7,6,5]])).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'Given an 6 x 6 array, return the array elements arranged from outermost elements to the middle element, traveling clockwise' do
    expect(snail_sort([[1, 2, 3, 4, 5, 6],
                       [12, 13, 14, 15, 16, 7],
                       [11, 20, 21, 22, 17, 8],
                       [10, 19, 18, 23, 24, 9],
                       [25, 26, 27, 28, 29, 30],
                       [36, 35, 34, 33, 32, 31]])).to eq([1,2,3,4,5,6,7,8,9,30,31,32,33,34,35,36,25,10,11,12,13,14,15,16,17,24,29,28,27,26,19,20,21,22,23,18])
  end

  it 'returns the elements of a randomly generated n x n array in spiral order' do
    # Generate a random 6 x 6 array with values from 1 to 100
    n = 6
    random_array = Array.new(n) { Array.new(n) { rand(1..100) } }

    # Print the generated array for reference
    puts "Generated Array:"
    random_array.each { |row| puts row.inspect }

    # Get the expected output by manually computing the spiral order
    expected_output = []
    top, bottom = 0, n - 1
    left, right = 0, n - 1

    while top <= bottom && left <= right
      (left..right).each { |i| expected_output << random_array[top][i] }
      top += 1
      (top..bottom).each { |i| expected_output << random_array[i][right] }
      right -= 1
      if top <= bottom
        (right).downto(left).each { |i| expected_output << random_array[bottom][i] }
        bottom -= 1
      end
      if left <= right
        (bottom).downto(top).each { |i| expected_output << random_array[i][left] }
        left += 1
      end
    end

    # Call the snail_sort function and compare
    expect(snail_sort(random_array)).to eq(expected_output)
  end
end

describe '#snail_sort2' do
  it 'Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise' do
    expect(snail_sort2([[1,2,3],[4,5,6],[7,8,9]])).to eq([1,2,3,6,9,8,7,4,5])
  end

  it 'Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise' do
    expect(snail_sort2([[1,2,3],[8,9,4],[7,6,5]])).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'Given an 6 x 6 array, return the array elements arranged from outermost elements to the middle element, traveling clockwise' do
    expect(snail_sort2([[1, 2, 3, 4, 5, 6],
                       [12, 13, 14, 15, 16, 7],
                       [11, 20, 21, 22, 17, 8],
                       [10, 19, 18, 23, 24, 9],
                       [25, 26, 27, 28, 29, 30],
                       [36, 35, 34, 33, 32, 31]])).to eq([1,2,3,4,5,6,7,8,9,30,31,32,33,34,35,36,25,10,11,12,13,14,15,16,17,24,29,28,27,26,19,20,21,22,23,18])
  end

  it 'returns the elements of a randomly generated n x n array in spiral order' do
    # Generate a random 6 x 6 array with values from 1 to 100
    n = 6
    random_array = Array.new(n) { Array.new(n) { rand(1..100) } }

    # Print the generated array for reference
    puts "Generated Array:"
    random_array.each { |row| puts row.inspect }

    # Get the expected output by manually computing the spiral order
    expected_output = []
    top, bottom = 0, n - 1
    left, right = 0, n - 1

    while top <= bottom && left <= right
      (left..right).each { |i| expected_output << random_array[top][i] }
      top += 1
      (top..bottom).each { |i| expected_output << random_array[i][right] }
      right -= 1
      if top <= bottom
        (right).downto(left).each { |i| expected_output << random_array[bottom][i] }
        bottom -= 1
      end
      if left <= right
        (bottom).downto(top).each { |i| expected_output << random_array[i][left] }
        left += 1
      end
    end

    # Call the snail_sort2 function and compare
    expect(snail_sort2(random_array)).to eq(expected_output)
  end
end
