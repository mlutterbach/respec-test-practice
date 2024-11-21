# Given a gigantic number to decode. Each number is a code that alternates
# in a pattern between encoded text and a smaller, encoded number. The pattern's length
# varies with every test, but the alternation between encoded text and an encoded number will always be there.
# Following this rule, each number tested begins with encoded text and ends with an encoded number.
# decode(103115104105123101118119981001098113113113981000) = "codewars, 18, mmm, 8"
# 103 115 104 105 123 101 118 119   98   10010   98   113 113 113   98   1000
#  c   o   d   e   w   a   r   s     ,     18     ,    m   m   m     ,     8

def decode(number)
  no_commas = number.to_s.split('98')
  no_commas.map.with_index do |item, index|
    if index.odd?
      item.to_i(2).to_s
    else
      item.scan(/\d{3}/).map{|x| (x.to_i - 4).chr}.join
    end
  end.join(', ')
end
