require 'first_recurring_character.rb'

describe '#first_recurring_char2' do
  it 'Given an array of numbers, return the first number that repeats itself' do
    expect(first_recurring_char2([1,2,2,1,2,3,4,5,6,7])).to eq(2)
    expect(first_recurring_char2([2,3,4,5,6,7,5])).to eq(5)
  end

  it 'Given array of numbers with no recurring number to return message saying no pair found' do
    expect(first_recurring_char2([2,3,4,5])).to eq("no recurring pair found")
    expect(first_recurring_char2([])).to eq("no recurring pair found")
  end
end
