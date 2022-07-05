def unique_in_order(iterable)
  array = []
  new_array = []
  current_value = ""
  iterable.class == String ? array = iterable.chars() : array = iterable
  array.each do |elem|
    new_array << elem if elem != current_value
    
    current_value = elem
  end
  new_array
end
