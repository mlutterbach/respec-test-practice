require 'longest_consecutive_strings.rb'

RSpec.describe 'longest_consec' do
  it 'returns the longest concatenated string for various test cases' do
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)).to eq("abigailtheta")
    expect(longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)).to eq("oocccffuucccjjjkkkjyyyeehh")
    expect(longest_consec([], 3)).to eq("")
    expect(longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2)).to eq("wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
    expect(longest_consec(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2)).to eq("wlwsasphmxxowiaxujylentrklctozmymu")
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2)).to eq("")
    expect(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3)).to eq("ixoyx3452zzzzzzzzzzzz")
    expect(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15)).to eq("")
    expect(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0)).to eq("")
  end
end

RSpec.describe 'longest_consec' do
  it 'returns an empty string for empty array' do
    expect(longest_consec([], 3)).to eq("")
  end

  it 'returns an empty string when k is greater than array length' do
    expect(longest_consec(["a", "b", "c"], 5)).to eq("")
  end

  it 'returns an empty string when k is less than or equal to zero' do
    expect(longest_consec(["a", "b", "c"], 0)).to eq("")
    expect(longest_consec(["a", "b", "c"], -1)).to eq("")
  end

  it 'returns the longest concatenated string for valid inputs' do
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 1)).to eq("abigail")
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)).to eq("abigailtheta")
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 3)).to eq("zoneabigailtheta")
    expect(longest_consec(["it", "v", "is", "really", "quite", "funny"], 2)).to eq("reallyquite")
  end

  it 'handles single element arrays' do
    expect(longest_consec(["a"], 1)).to eq("a")
    expect(longest_consec(["a"], 2)).to eq("")
  end
end

RSpec.describe 'longest_consec2' do
  it 'returns an empty string for empty array' do
    expect(longest_consec2([], 3)).to eq("")
  end

  it 'returns an empty string when k is greater than array length' do
    expect(longest_consec2(["a", "b", "c"], 5)).to eq("")
  end

  it 'returns an empty string when k is less than or equal to zero' do
    expect(longest_consec2(["a", "b", "c"], 0)).to eq("")
    expect(longest_consec2(["a", "b", "c"], -1)).to eq("")
  end

  it 'returns the longest concatenated string for valid inputs' do
    expect(longest_consec2(["zone", "abigail", "theta", "form", "libe", "zas"], 1)).to eq("abigail")
    expect(longest_consec2(["zone", "abigail", "theta", "form", "libe", "zas"], 2)).to eq("abigailtheta")
    expect(longest_consec2(["zone", "abigail", "theta", "form", "libe", "zas"], 3)).to eq("zoneabigailtheta")
    expect(longest_consec2(["it", "v", "is", "really", "quite", "funny"], 2)).to eq("reallyquite")
  end

  it 'handles single element arrays' do
    expect(longest_consec2(["a"], 1)).to eq("a")
    expect(longest_consec2(["a"], 2)).to eq("")
  end
end
