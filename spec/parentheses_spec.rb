require 'parentheses.rb'

describe '#parentheses_counter' do
  it 'takes a string of parentheses, and determines if the order of the parentheses is valid' do
    expect(parentheses_counter("()")).to eq(true)
  end

  it 'takes a string of parentheses, and determines if the order of the parentheses is valid' do
    expect(parentheses_counter("(")).to be false
    expect(parentheses_counter("())(")).to eq(false)
  end

  it 'takes a string of parentheses, and determines if the order of the parentheses is valid' do
    expect(parentheses_counter(")(()))")).to be false
  end

  it 'takes a string of parentheses, and determines if the order of the parentheses is valid' do
    expect(parentheses_counter("((())((()())()))")).to be true
  end
end
