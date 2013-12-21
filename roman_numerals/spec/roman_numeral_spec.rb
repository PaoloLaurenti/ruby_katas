require_relative '../lib/roman_numeral.rb'

describe 'How to convert firsts 3000 numbers from arabic format to roman' do
  subject(:roman_numeral) { roman_numeral = RomanNumeral.new }
    
  let (:numbers) { numbers = roman_numeral.get_numbers }

  it 'must convert 1 to I' do
    expect(numbers.first).to eq('I')
  end

  it 'must convert 2 to II' do
    expect(numbers[1]).to eq('II')
  end
end  