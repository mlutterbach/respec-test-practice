def longest_consec(strarr, k)
  return "" if strarr.empty? || k > strarr.length || k <= 0

  sum = ""
  strarr.each_cons(k) do |elems|
    current_concat = elems.join
    sum = current_concat if current_concat.length > sum.length
  end
  sum
end

def longest_consec2(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end
