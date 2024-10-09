require 'find_parity_outlier.rb'

describe "#find_parity_outlier" do
  it "In array comprised of odd integers or entirely comprised of even integers except for a single integer N. Find and return N" do
    expect(find_outlier([0,1,2])).to eq(1)
    expect(find_outlier([1,2,3])).to eq(2)
  end
end
