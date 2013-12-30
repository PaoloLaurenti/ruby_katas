require_relative '../../lib/roman_numeral.rb'

describe 'Roman numeral conversion' do
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

  it 'provides 13 as XIII' do
    expect(numbers[12]).to eq('XIII')
  end

  it 'provides 14 as XIV' do
    expect(numbers[13]).to eq('XIV')
  end

  it 'provides 15 as XV' do
    expect(numbers[14]).to eq('XV')
  end

  it 'provides 16 as XVI' do
    expect(numbers[15]).to eq('XVI')
  end

  it 'provides 18 as XVIII' do
    expect(numbers[17]).to eq('XVIII')
  end

  it 'provides 19 as XIX' do
    expect(numbers[18]).to eq('XIX')
  end
  it 'provides 20 as XX' do
    expect(numbers[19]).to eq('XX')
  end
  it 'provides 39 as XXXIX' do
    expect(numbers[38]).to eq('XXXIX')
  end
  it 'provides 40 as XL' do
    expect(numbers[39]).to eq('XL')
  end
  it 'provides 41 as XLI' do
    expect(numbers[40]).to eq('XLI')
  end
  it 'provides 49 as XLIX' do
    expect(numbers[48]).to eq('XLIX')
  end
  it 'provides 50 as L' do
    expect(numbers[49]).to eq('L')
  end
  it 'provides 53 as LIII' do
    expect(numbers[52]).to eq('LIII')
  end
  it 'provides 78 as LXXVIII' do
    expect(numbers[77]).to eq('LXXVIII')
  end
  it 'provides 89 as LXXXIX' do
    expect(numbers[88]).to eq('LXXXIX')
  end
  it 'provides 90 as XC' do
    expect(numbers[89]).to eq('XC')
  end
  it 'provides 93 as XCIII' do
    expect(numbers[92]).to eq('XCIII')
  end
  it 'provides 98 as XCVIII' do
    expect(numbers[97]).to eq('XCVIII')
  end
  it 'provides 99 as XCIX' do
    expect(numbers[98]).to eq('XCIX')
  end
  it 'provides 100 as C' do
    expect(numbers[99]).to eq('C')
  end

  it 'provides 103 as CIII' do
    expect(numbers[102]).to eq('CIII')
  end
  it 'provides 149 as CXLIX' do
    expect(numbers[148]).to eq('CXLIX')
  end
  it 'provides 199 as CXCIX' do
    expect(numbers[198]).to eq('CXCIX')
  end
  it 'provides 399 as CCCXCIX' do
    expect(numbers[398]).to eq('CCCXCIX')
  end
  it 'provides 400 as CD' do
    expect(numbers[399]).to eq('CD')
  end
  it 'provides 499 as CDXCIX' do
    expect(numbers[498]).to eq('CDXCIX')
  end
  it 'provides 500 as D' do
    expect(numbers[499]).to eq('D')
  end
  it 'provides 503 as DIII' do
    expect(numbers[502]).to eq('DIII')
  end
  it 'provides 845 as DCCCXLV' do
    expect(numbers[844]).to eq('DCCCXLV')
  end
  it 'provides 901 as CMI' do
    expect(numbers[900]).to eq('CMI')
  end
  it 'provides 999 as CMXCIX' do
    expect(numbers[998]).to eq('CMXCIX')
  end
  it 'provides 1000 as M' do
    expect(numbers[999]).to eq('M')
  end
  it 'provides 1003 as MIII' do
    expect(numbers[1002]).to eq('MIII')
  end
  it 'provides 1999 as MCMXCIX' do
    expect(numbers[1998]).to eq('MCMXCIX')
  end
  it 'provides 2000 as MM' do
    expect(numbers[1999]).to eq('MM')
  end

  it 'provides 2999 as MMCMXCIX' do
    expect(numbers[2998]).to eq('MMCMXCIX')
  end
  it 'provides 3000 as MMM' do
    expect(numbers[2999]).to eq('MMM')
  end

end  