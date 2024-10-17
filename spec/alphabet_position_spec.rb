require 'alphabet_position.rb'

describe "#alphabet_position" do
  it "converts string in numbers, excludes anything that is not letters, returns string" do
    expect(alphabet_position("The sunset sets at twelve o' clock.")).to eq("20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
    expect(subject.class).to eq(String)
  end

  it "None letters, returns empty string" do
    expect(alphabet_position("' .")).to eq("")
  end
end
