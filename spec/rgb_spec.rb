require 'rgb.rb'

RSpec.describe 'RGB to Hexadecimal conversion' do
  describe '#rgb' do
    it 'returns the correct hex value for valid inputs' do
      expect(rgb(255, 255, 255)).to eq('FFFFFF')
      expect(rgb(0, 0, 0)).to eq('000000')
      expect(rgb(128, 64, 32)).to eq('804020')
    end

    it 'clamps values below 0 to 0' do
      expect(rgb(-1, 50, 100)).to eq('003264')
    end

    it 'clamps values above 255 to 255' do
      expect(rgb(300, 255, 256)).to eq('FFFFFF')
    end
  end

  describe '#rgb_2' do
    it 'returns the correct hex value for valid inputs' do
      expect(rgb_2(255, 255, 255)).to eq('FFFFFF')
      expect(rgb_2(0, 0, 0)).to eq('000000')
      expect(rgb_2(128, 64, 32)).to eq('804020')
    end

    it 'clamps values below 0 to 0' do
      expect(rgb_2(-1, 50, 100)).to eq('003264')
    end

    it 'clamps values above 255 to 255' do
      expect(rgb_2(300, 255, 256)).to eq('FFFFFF')
    end
  end
end
