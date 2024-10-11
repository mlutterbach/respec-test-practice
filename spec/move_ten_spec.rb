require 'move_ten.rb'

describe '#move_ten' do
  it 'Move every letter in the provided string forward 10 letters through the alphabet.' do
    expect(move_ten('testcase')).to eq('docdmkco')
    expect(move_ten('codewars')).to eq('mynogkbc')
    expect(move_ten('exampletesthere')).to eq('ohkwzvodocdrobo')
    expect(move_ten('returnofthespacecamel')).to eq('bodebxypdroczkmomkwov')
    expect(move_ten('bringonthebootcamp')).to eq('lbsxqyxdrolyydmkwz')
  end
end

describe '#move_ten2' do
  it 'Move every letter in the provided string forward 10 letters through the alphabet.' do
    expect(move_ten2('testcase')).to eq('docdmkco')
    expect(move_ten2('codewars')).to eq('mynogkbc')
    expect(move_ten2('exampletesthere')).to eq('ohkwzvodocdrobo')
    expect(move_ten2('returnofthespacecamel')).to eq('bodebxypdroczkmomkwov')
    expect(move_ten2('bringonthebootcamp')).to eq('lbsxqyxdrolyydmkwz')
  end
end
