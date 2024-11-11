def scramble(s1, s2)
  chars_hash = Hash.new(0)
  s1.chars.each do |char|
    chars_hash[char] += 1
  end

  s2.chars.each do |char|
    chars_hash[char] -= 1
    return false if chars_hash[char] < 0
  end

  true
end

def scramble2(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end
