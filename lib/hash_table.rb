class HashTable
  def initialize(size)
    @data = Array.new(size)
  end

  def _hash(key)
    hash = 0
    key.each_char.with_index do |char, i|
      hash = (hash + char.ord * i) % @data.length
    end
    hash
  end

  def set(key, value)
    address = _hash(key)
    @data[address] ||= []
    @data[address] << [key, value]
    @data
  end

  def get(key)
    address = _hash(key)
    current_bucket = @data[address]
    if current_bucket
      current_bucket.each do |pair|
        return pair[1] if pair[0] == key
      end
    end
    nil
  end

  def keys
    keys_array = []
    @data.each do |bucket|
      if bucket
        bucket.each do |pair|
          keys_array.push(pair[0])
        end
      end
    end
    keys_array
  end
end

my_hash_table = HashTable.new(50)
my_hash_table.set('grapes', 10000)
my_hash_table.set('apples', 9)
my_hash_table.set('bananas', 500)

puts "#{my_hash_table.keys}"
