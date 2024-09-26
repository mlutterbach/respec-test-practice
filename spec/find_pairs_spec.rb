require 'find_pairs.rb'

describe '#find_pair_with_sum' do
  it 'given array and a sum, return false if there is no pair inside the array that is equal to the sum' do
    expect(find_pair_with_sum([1,2,3,9], 8)).to eq(false)
  end

  it 'given array and a sum, return true if there is a pair inside the array that is equal to the sum' do
    expect(find_pair_with_sum([1,2,4,4], 8)).to eq(true)
  end
end
