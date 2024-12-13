# https://www.codewars.com/kata/5279f6fe5ab7f447890006a7/train/ruby

def pick_peaks(arr)
  result = { pos: [], peaks: [] }
  return result.transform_keys(&:to_s) if arr.empty?

  candidates = []

  arr.each_with_index do |curr, index|
    next if index == 0 || index == arr.length - 1

    prev = arr[index - 1]
    nxt = arr[index + 1]

    if curr > prev && curr >= nxt
      candidates << index
    end
  end

  candidates.each do |index|
    if arr[index] > arr[index + 1]
      result[:pos] << index
      result[:peaks] << arr[index]
    elsif arr[index] == arr[index + 1]
      plateau_end = index + 1
      plateau_end += 1 while plateau_end < arr.length - 1 && arr[plateau_end] == arr[index]

      if arr[plateau_end] < arr[index]
        result[:pos] << index
        result[:peaks] << arr[index]
      end
    end
  end

  result.transform_keys(&:to_s)
end
