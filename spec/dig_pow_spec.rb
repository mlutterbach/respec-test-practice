require 'dig_pow.rb'

describe "#dig_pow" do
  it "find and return a positive integer such that the sum of the digits of n raised to consecutive powers starting from p is equal to k * n" do
    expect(dig_pow(89,1)).to eq(1)
    expect(dig_pow(46288,3)).to eq(51)
  end

  it "Can't find a positive integer, returns -1" do
    expect(dig_pow(92,1)).to eq(-1)
  end
end
