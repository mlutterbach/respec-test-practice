require 'selection_sort.rb'

describe '#selection_sort' do
  it 'sorts array using selection sort' do
    expect(selection_sort([99, 44, 6, 2, 1, 5, 63, 87, 283, 4, 0])).to eq([0, 1, 2, 4, 5, 6, 44, 63, 87, 99, 283])
  end
end
