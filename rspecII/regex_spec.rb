require './regex'
require './spec_helper'

describe Regex do
  before(:example) { @regex = Regex.new }

  it 'matches any single first character except a newline' do
    expect(@regex.match_any_one('.', 'a')).to eq('a') 
    expect(@regex.match_any_one('\w', 'abc').to_s).to eq('a')
    expect(@regex.match_any_one('\w', '7abc').to_s).to eq('7')
    expect(@regex.match_any_one('\w', 'Cabc').to_s).to eq('C')
    expect(@regex.match_any_one('[[:alpha:]]', 'a').to_s).to eq('a')
    expect(@regex.match_any_one('(a|b)', 'a').to_s).to eq('a')
    expect(@regex.match_any_one('[^d]', 'd').to_s).to eq('')
  end

  it 'matches greedily,lazily or a set length' do
    expect(@regex.match_greedy('aAbBaaAA')).to eq('aAbBaaAA')
    expect(@regex.match_lazy('aAbBaaAA')).to eq('a')
    expect(@regex.match_word('?aBc123%')).to eq('aBc123')
  end

  it 'matches unlimited digits' do 
    expect(@regex.match_digits('58476')).to eq(['58476'])
    expect(@regex.match_digits('58476a78')).to eq(['58476', '78'])
  end

  it 'matches characters at start and end of string' do
    expect(@regex.match_start('aBcDeF')).to eq('aBcD')
    expect(@regex.match_end('aBcDeF')).to eq('cDeF')
  end

  it 'matches a hex' do 
    expect(@regex.match_hex('A1F2C3')).to eq('A1F2C3')
    expect(@regex.match_hex_posix('3C2F1A')).to eq('3C2F1A')
  end

  it 'matches an invitation token' do
    expect(@regex.match_token(10, '1aB2cD3eF4')).to eq('1aB2cD3eF4')
  end

  it 'matches a password' do
    #expect(@regex.match_password('aaaaa^')).to eq('aaaaa^')
    expect(@regex.match_password('aA1@bB2^')).to eq('aA1@bB2^')
  end

  it 'matches a phone number' do
    expect(@regex.match_phone_number('(908) 232-5648')).to eq('(908) 232-5648')
    expect(@regex.match_phone_number('908 232 5648')).to eq('908 232 5648')
  end

  it 'matches html content' do
    expect(@regex.match_html('li', 'hello world')).to eq('hello world')
  end  
end