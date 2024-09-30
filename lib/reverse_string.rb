def reverse_string(string)
  string.chars.reverse().join()
end

def reverse(str)
  return str if !str || !str.is_a?(String) || str.length < 2

  backwards = []
  total_items = str.length - 1
  total_items.downto(0) do |i|
    backwards.push(str[i])
  end
  backwards.join('')
end

reverse_string("Hello My name is Marcos")
reverse("Hello My name is Marcos")
