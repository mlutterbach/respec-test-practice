class MyArray
  def initialize
    @length = 0
    @data = {}
  end

  def get(index)
    @data[index]
  end

  def push(item)
    @data[@length] = item
    @length += 1
    @length
  end

  def pop
    return nil if @length == 0

    last_item = @data[@length - 1]
    @data.delete(@length - 1)
    @length -= 1
    last_item
  end

  def delete(index)
    item = @data[index]
    shift_items(index)
    item
  end

  def shift_items(index)
    (index...@length - 1).each do |i|
      @data[i] = @data[i + 1]
    end
    @data.delete(@length - 1)
    @length -= 1
  end

  def to_s
    "@length=#{@length}, @data=#{@data}"
  end
end

new_array = MyArray.new
puts new_array.push("hi")
puts new_array.push("you")
puts new_array.push("there")
puts new_array.push("!")
puts new_array.delete(1)  # Deletes "you" and shifts "there" to index 1
puts new_array.get(1)  # Output: "there"
puts new_array.pop
puts new_array
