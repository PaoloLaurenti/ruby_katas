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

  it 'provides 5 as V' do
    expect(numbers[4]).to eq('V')
  end

  it 'provides 6 as VI' do
    expect(numbers[5]).to eq('VI')
  end

  it 'provides 7 as VII' do
    expect(numbers[6]).to eq('VII')
  end

  it 'provides 8 as VIII' do
    expect(numbers[7]).to eq('VIII')
  end

  it 'provides 9 as IX' do
    expect(numbers[8]).to eq('IX')
  end

  it 'provides 10 as X' do
    expect(numbers[9]).to eq('X')
  end

  it 'provides 11 as XI' do
    expect(numbers[10]).to eq('XI')
  end

  it 'provides 12 as XII' do
    expect(numbers[11]).to eq('XII')
  end

end  