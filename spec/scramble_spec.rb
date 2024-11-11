require 'rspec'

# Define the functions
def scramble(s1, s2)
  chars_hash = Hash.new(0)
  s1.chars.each { |char| chars_hash[char] += 1 }
  s2.chars.each do |char|
    chars_hash[char] -= 1
    return false if chars_hash[char] < 0
  end
  true
end

def scramble2(s1, s2)
  s2.chars.uniq.all? { |x| s2.count(x) <= s1.count(x) }
end

# RSpec tests
RSpec.describe 'Scramble functions' do
  let(:s1) { 'rkqodlw' }
  let(:s2) { 'world' }
  let(:s3) { 'katas' }
  let(:s4) { 'steak' }
  let(:long_s1) { 'a' * 1_000_000 + 'b' * 500_000 }
  let(:long_s2) { 'a' * 500_000 + 'b' * 250_000 }

  it 'scramble returns true if s1 can be rearranged to match s2' do
    expect(scramble(s1, s2)).to eq(true)
    expect(scramble(s1, s3)).to eq(false)
    expect(scramble(s1, s4)).to eq(false)
    expect(scramble(long_s1, long_s2)).to eq(true)
  end

  it 'scramble2 returns true if s1 can be rearranged to match s2' do
    expect(scramble2(s1, s2)).to eq(true)
    expect(scramble2(s1, s3)).to eq(false)
    expect(scramble2(s1, s4)).to eq(false)
    expect(scramble2(long_s1, long_s2)).to eq(true)
  end
end
