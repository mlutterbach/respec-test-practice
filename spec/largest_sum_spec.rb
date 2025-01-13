require 'largest_sum.rb'

describe '#largest_sum.rb' do
  it 'expects array sum to output largest sum' do
    expect(largest_sum([1, 2, -4])).to eq(3)
    expect(largest_sum([3, 2, 5, -1, 6, -2, 8])).to eq(21)
    expect(largest_sum([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to eq(6)
    expect(largest_sum([2, 3, -6, 4, 2, 1, -1, -3, 4])).to eq(7)
  end

  it 'expects negative numbers array to output 0' do
    expect(largest_sum([-1, -2, -3])).to eq(0)
  end

  it 'expects empty array to output 0' do
    expect(largest_sum([])).to eq(0)
  end
end
