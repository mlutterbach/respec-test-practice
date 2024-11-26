require 'find_uniq.rb'

describe 'find uniq methods' do
  let(:small_array) { [1,1,1,1,2]}
  let(:medium_array) { [1] * 999_999 + [2]}
  let(:large_array) { [1] * 9_999_999 + [2]}
  let(:decimal_array) { [0, 0, 0.55, 0, 0] }

  methods = [:find_uniq_1, :find_uniq_2, :find_uniq_3]

  methods.each do |method|
    describe method.to_s do
      it 'finds the unique number in a small array' do
        expect(send(method, small_array)).to eq(2)
      end

      it 'finds the unique number in an array with decimals' do
        expect(send(method, decimal_array)).to eq(0.55)
      end

      it 'finds the unique number in a large array' do
        expect(send(method, medium_array)).to eq(2)
      end

      it 'handles very large arrays efficiently' do
        expect(send(method, large_array)).to eq(2)
      end
    end
  end
end
