require 'divisors.rb'

describe '#divisors' do
  it "returns array of numbers, not including 1 and n, that are the divisors of n" do
    expect(divisors(4)).to eq([2])
    expect(divisors(6)).to eq([2,3])
    expect(divisors(8)).to eq([2,4])
    expect(divisors(10)).to eq([2,5])
    expect(divisors(25)).to eq([5])
    expect(divisors(36)).to eq([2,3,4,6,9,12,18])
  end

  it "returns primes as 'n is prime'" do
    expect(divisors(2)).to eq("2 is prime")
    expect(divisors(3)).to eq("3 is prime")
    expect(divisors(5)).to eq("5 is prime")
    expect(divisors(7)).to eq("7 is prime")
  end
end
