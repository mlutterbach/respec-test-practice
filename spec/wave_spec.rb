require 'wave.rb'

describe "#wave" do
  it "You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up" do
    expect(wave("hello")).to eq(["Hello", "hEllo", "heLlo", "helLo", "hellO"])
  end

  it "You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up" do
    expect(wave("codewars")).to eq(["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"])
  end

  it "You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up" do
    expect(wave("two words")).to eq(["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
  end

  it "You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up" do
    expect(wave("")).to eq([])
  end
end
