require 'number_decode.rb'

RSpec.describe 'decode' do
  it 'decodes a simple example with one text and one binary number' do
    expect(decode(1031159810010)).to eq('co, 18')
  end

  it 'decodes a more complex example with multiple texts and numbers' do
    expect(decode(103115104105123101118119981001098113113113981000))
      .to eq('codewars, 18, mmm, 8')
  end

  it 'handles a single text without numbers' do
    expect(decode(103115104)).to eq('cod')
  end

  it 'handles input with no 98 delimiters' do
    expect(decode(103115104105123)).to eq('codew')
  end

  it 'handles an empty input gracefully' do
    expect(decode('')).to eq('')
  end
end
