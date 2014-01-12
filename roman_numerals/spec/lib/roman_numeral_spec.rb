require_relative '../../lib/roman_numeral.rb'

describe 'Roman numeral conversion' do
  subject(:roman_numeral) { roman_numeral = RomanNumeral.new }
    
  let (:numbers) { numbers = roman_numeral.get_numbers }

  it 'provides 1 as I' do
    expect(roman_numeral.convert(1)).to eq('I')
  end

  it 'provides I as 1' do
    expect(roman_numeral.convert_to_arabic('I')).to eq(1)
  end

  it 'provides 2 as II' do
    expect(roman_numeral.convert(2)).to eq('II')
  end

  it 'provides II as 2' do
    expect(roman_numeral.convert_to_arabic('II')).to eq(2)
  end

  it 'provides 3 as III' do
    expect(roman_numeral.convert(3)).to eq('III')
  end

  it 'provides III as 3' do
    expect(roman_numeral.convert_to_arabic('III')).to eq(3)
  end

  it 'provides 4 as IV' do
    expect(roman_numeral.convert(4)).to eq('IV')
  end

  it 'provides IV as 4' do
    expect(roman_numeral.convert_to_arabic('IV')).to eq(4)
  end

  it 'provides 5 as V' do
    expect(roman_numeral.convert(5)).to eq('V')
  end

  it 'provides V as 5' do
    expect(roman_numeral.convert_to_arabic('V')).to eq(5)
  end

  it 'provides 6 as VI' do
    expect(roman_numeral.convert(6)).to eq('VI')
  end

  it 'provides VI as 6' do
    expect(roman_numeral.convert_to_arabic('VI')).to eq(6)
  end

  it 'provides 7 as VII' do
    expect(roman_numeral.convert(7)).to eq('VII')
  end

  it 'provides VII as 7' do
    expect(roman_numeral.convert_to_arabic('VII')).to eq(7)
  end

  it 'provides 8 as VIII' do
    expect(roman_numeral.convert(8)).to eq('VIII')
  end

  it 'provides VIII as 8' do
    expect(roman_numeral.convert_to_arabic('VIII')).to eq(8)
  end

  it 'provides 9 as IX' do
    expect(roman_numeral.convert(9)).to eq('IX')
  end

  it 'provides IX as 9' do
    expect(roman_numeral.convert_to_arabic('IX')).to eq(9)
  end

  it 'provides 10 as X' do
    expect(roman_numeral.convert(10)).to eq('X')
  end

  it 'provides X as 10' do
    expect(roman_numeral.convert_to_arabic('X')).to eq(10)
  end

  it 'provides 11 as XI' do
    expect(roman_numeral.convert(11)).to eq('XI')
  end

  it 'provides 12 as XII' do
    expect(roman_numeral.convert(12)).to eq('XII')
  end

  it 'provides 13 as XIII' do
    expect(roman_numeral.convert(13)).to eq('XIII')
  end

  it 'provides XIII as 13' do
    expect(roman_numeral.convert_to_arabic('XIII')).to eq(13)
  end

  it 'provides 14 as XIV' do
    expect(roman_numeral.convert(14)).to eq('XIV')
  end

  it 'provides XIV as 14' do
    expect(roman_numeral.convert_to_arabic('XIV')).to eq(14)
  end

  it 'provides 15 as XV' do
    expect(roman_numeral.convert(15)).to eq('XV')
  end

  it 'provides XV as 15' do
    expect(roman_numeral.convert_to_arabic('XV')).to eq(15)
  end

  it 'provides 16 as XVI' do
    expect(roman_numeral.convert(16)).to eq('XVI')
  end

  it 'provides 18 as XVIII' do
    expect(roman_numeral.convert(18)).to eq('XVIII')
  end

  it 'provides XVIII as 18' do
    expect(roman_numeral.convert_to_arabic('XVIII')).to eq(18)
  end

  it 'provides 19 as XIX' do
    expect(roman_numeral.convert(19)).to eq('XIX')
  end

  it 'provides XIX as 19' do
    expect(roman_numeral.convert_to_arabic('XIX')).to eq(19)
  end

  it 'provides 20 as XX' do
    expect(roman_numeral.convert(20)).to eq('XX')
  end

  it 'provides XX as 20' do
    expect(roman_numeral.convert_to_arabic('XX')).to eq(20)
  end

  it 'provides 39 as XXXIX' do
    expect(roman_numeral.convert(39)).to eq('XXXIX')
  end

  it 'provides XXXIX as 39' do
    expect(roman_numeral.convert_to_arabic('XXXIX')).to eq(39)
  end

  it 'provides 40 as XL' do
    expect(roman_numeral.convert(40)).to eq('XL')
  end

  it 'provides XL as 40' do
    expect(roman_numeral.convert_to_arabic('XL')).to eq(40)
  end

  it 'provides 41 as XLI' do
    expect(roman_numeral.convert(41)).to eq('XLI')
  end

  it 'provides XLI as 41' do
    expect(roman_numeral.convert_to_arabic('XLI')).to eq(41)
  end

  it 'provides 49 as XLIX' do
    expect(roman_numeral.convert(49)).to eq('XLIX')
  end

  it 'provides XLIX as 49' do
    expect(roman_numeral.convert_to_arabic('XLIX')).to eq(49)
  end

  it 'provides 50 as L' do
    expect(roman_numeral.convert(50)).to eq('L')
  end

  it 'provides L as 50' do
    expect(roman_numeral.convert_to_arabic('L')).to eq(50)
  end

  it 'provides 53 as LIII' do
    expect(roman_numeral.convert(53)).to eq('LIII')
  end

  it 'provides LIII as 53' do
    expect(roman_numeral.convert_to_arabic('LIII')).to eq(53)
  end

  it 'provides 78 as LXXVIII' do
    expect(roman_numeral.convert(78)).to eq('LXXVIII')
  end

  it 'provides LXXVIII as 78' do
    expect(roman_numeral.convert_to_arabic('LXXVIII')).to eq(78)
  end

  it 'provides 89 as LXXXIX' do
    expect(roman_numeral.convert(89)).to eq('LXXXIX')
  end

  it 'provides LXXXIX as 89' do
    expect(roman_numeral.convert_to_arabic('LXXXIX')).to eq(89)
  end

  it 'provides 90 as XC' do
    expect(roman_numeral.convert(90)).to eq('XC')
  end

  it 'provides XC as 90' do
    expect(roman_numeral.convert_to_arabic('XC')).to eq(90)
  end

  it 'provides 93 as XCIII' do
    expect(roman_numeral.convert(93)).to eq('XCIII')
  end

  it 'provides XCIII as 93' do
    expect(roman_numeral.convert_to_arabic('XCIII')).to eq(93)
  end

  it 'provides 98 as XCVIII' do
    expect(roman_numeral.convert(98)).to eq('XCVIII')
  end

  it 'provides XCVIII as 98' do
    expect(roman_numeral.convert_to_arabic('XCVIII')).to eq(98)
  end

  it 'provides 99 as XCIX' do
    expect(roman_numeral.convert(99)).to eq('XCIX')
  end

  it 'provides XCIX as 99' do
    expect(roman_numeral.convert_to_arabic('XCIX')).to eq(99)
  end

  it 'provides 100 as C' do
    expect(roman_numeral.convert(100)).to eq('C')
  end

  it 'provides C as 100' do
    expect(roman_numeral.convert_to_arabic('C')).to eq(100)
  end

  it 'provides 103 as CIII' do
    expect(roman_numeral.convert(103)).to eq('CIII')
  end

  it 'provides 149 as CXLIX' do
    expect(roman_numeral.convert(149)).to eq('CXLIX')
  end

  it 'provides 199 as CXCIX' do
    expect(roman_numeral.convert(199)).to eq('CXCIX')
  end

  it 'provides 399 as CCCXCIX' do
    expect(roman_numeral.convert(399)).to eq('CCCXCIX')
  end

  it 'provides 400 as CD' do
    expect(roman_numeral.convert(400)).to eq('CD')
  end

  it 'provides 499 as CDXCIX' do
    expect(roman_numeral.convert(499)).to eq('CDXCIX')
  end

  it 'provides 500 as D' do
    expect(roman_numeral.convert(500)).to eq('D')
  end

  it 'provides 503 as DIII' do
    expect(roman_numeral.convert(503)).to eq('DIII')
  end

  it 'provides 845 as DCCCXLV' do
    expect(roman_numeral.convert(845)).to eq('DCCCXLV')
  end

  it 'provides 901 as CMI' do
    expect(roman_numeral.convert(901)).to eq('CMI')
  end

  it 'provides 999 as CMXCIX' do
    expect(roman_numeral.convert(999)).to eq('CMXCIX')
  end

  it 'provides 1000 as M' do
    expect(roman_numeral.convert(1000)).to eq('M')
  end

  it 'provides 1003 as MIII' do
    expect(roman_numeral.convert(1003)).to eq('MIII')
  end

  it 'provides 1999 as MCMXCIX' do
    expect(roman_numeral.convert(1999)).to eq('MCMXCIX')
  end

  it 'provides 2000 as MM' do
    expect(roman_numeral.convert(2000)).to eq('MM')
  end

  it 'provides 2999 as MMCMXCIX' do
    expect(roman_numeral.convert(2999)).to eq('MMCMXCIX')
  end

  it 'provides 3000 as MMM' do
    expect(roman_numeral.convert(3000)).to eq('MMM')
  end

end  