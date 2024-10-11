# Move every letter in the provided string forward 10 letters through the alphabet.
# If it goes past 'z', start again at 'a'.

def move_ten st
  st.chars.map do |char|
    if char.ord + 10 <= "z".ord
      (char.ord + 10).chr
    else
      (char.ord + 10 - "z".ord + "a".ord - 1).chr
    end
  end.join('')
end

def move_ten2 string
  string.tr('a-z','k-za-j')
end
