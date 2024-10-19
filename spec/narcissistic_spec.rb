require 'narcissistic.rb'

describe "#narcissistic?" do
  it "returns true if positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base" do
    expect(narcissistic?(153)).to eq(true)
  end

  it "should find these numbers are narcissistic" do
    expect(narcissistic?(5)).to eq(true)
  end

  it "should find these numbers are NOT narcissistic" do
    expect(narcissistic?(1633)).to eq(false)
  end
end
