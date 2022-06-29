require 'prime_factor.rb'

describe '#prime_factors' do
  it 'given a positive number n > 1 find the prime factor decomposition of n' do
    expect(prime_factors(8)).to eq("(2**3)")
  end

  it 'given a positive number n > 1 find the prime factor decomposition of n' do
    expect(prime_factors(88)).to eq("(2**3)(11)")
  end

  it 'given a positive number n > 1 find the prime factor decomposition of n' do
    expect(prime_factors(86240)).to eq("(2**5)(5)(7**2)(11)")
  end

  it 'given a positive number n > 1 find the prime factor decomposition of n' do
    expect(prime_factors(7775460)).to eq("(2**2)(3**3)(5)(7)(11**2)(17)")
  end
end
