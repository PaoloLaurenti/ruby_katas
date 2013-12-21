require_relative '../../lib/roman_numeral.rb'

describe 'Converts firsts 3000 numbers from arabic format to roman' do
  subject(:roman_numeral) { roman_numeral = RomanNumeral.new }
    
  let (:numbers) { numbers = roman_numeral.get_numbers }

  it 'provides 1 as I' do
    expect(numbers.first).to eq('I')
  end

  it 'provides 2 as II' do
    expect(numbers[1]).to eq('II')
  end

  it 'provides 3 as III' do
    expect(numbers[2]).to eq('III')
  end

  it 'provides 4 as IV' do
  	expect(numbers[3]).to eq('IV')
  end
end  