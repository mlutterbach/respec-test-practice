require 'unique_in_order.rb'

describe '#unique_in_order' do
  it 'returns a list of items without any elements with the same value next to each other and preserving the original order of elements' do
    expect(unique_in_order('AAAABBBCCDAABBB')).to eq(['A','B','C','D','A','B'])
  end

  it 'returns a list of items without any elements with the same value next to each other and preserving the original order of elements' do
    expect(unique_in_order('ABBCcAD')).to eq(['A', 'B', 'C', 'c', 'A', 'D'])
  end

  it 'returns a list of items without any elements with the same value next to each other and preserving the original order of elements' do
    expect(unique_in_order([1,2,2,3,3])).to eq([1,2,3])
  end
end
