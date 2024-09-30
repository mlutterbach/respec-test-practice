require 'reverse_string.rb'

describe '#reverse_string' do
  it 'receives string and reverses it' do
    expect(reverse_string("Hello My name is Marcos")).to eq("socraM si eman yM olleH")
  end
end
