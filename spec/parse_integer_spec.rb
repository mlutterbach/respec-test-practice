require 'parse_integer.rb'

describe '#parse_int' do
  it 'takes a string number and converts it to integer number' do
    expect(parse_int("one")).to eq(1)
  end

  it 'takes a string number and converts it to integer number' do
    expect(parse_int("twenty")).to eq(20)
  end

  it 'takes a string number and converts it to integer number' do
    expect(parse_int("two hundred forty-six")).to eq(246)
  end

  it 'takes a string number and converts it to integer number' do
    expect(parse_int("seven hundred eighty-three thousand nine hundred and nineteen")).to eq(783919)
  end
end
