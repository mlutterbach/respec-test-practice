require 'test.rb'

describe "#suma_factorial" do
  it "returns the sum of number, adding all number within itself as well" do
    expect(suma_factorial(5)).to eql(35)
  end
  it "returns the sum of number, adding all number within itself as well" do
    expect(suma_factorial(10)).to eql(220)
  end
end

describe "#subdivide" do
  it "subdivide the array, into multiple arrays given a number" do
    expect(subdivide(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l'], 3)).to eql(
      [['a', 'd', 'g', 'j'],
      ['b', 'e', 'h', 'k'],
      ['c', 'f', 'i', 'l']])
  end
  it "subdivide the array, into multiple arrays given a number" do
    expect(subdivide(['a', 'b', 'c', 'd'], 2)).to eql(
      [['a', 'c'],
      ['b', 'd']])
  end
end
