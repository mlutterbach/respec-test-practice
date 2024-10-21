require 'presses.rb'

describe '#presses' do
  it 'Return number of presses that represent the phrase, should work for simple words' do
    expect(presses('LOL')).to eq(9)
  end

  it 'Return number of presses that represent the phrase, should work for phrases with spaces' do
    expect(presses('HOW R U')).to eq(13)
  end
end
