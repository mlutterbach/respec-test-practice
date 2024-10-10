def dig_pow(n, p)
  sum = n.digits.reverse.map do |dig|
    dig**p.tap { p += 1 } 
  end.inject(:+)
  sum % n == 0 ? sum / n : -1
end
