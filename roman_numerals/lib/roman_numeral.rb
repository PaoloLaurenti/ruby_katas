class RomanNumeral
  def initialize
    @numbers = []
  end
  
  def get_numbers
    (1..3).each do |number|
      @numbers << GetRomanNumeralBetween1And3(number)
    end

    @numbers << 'IV'
    @numbers << 'V'

    (6..8).each do |number|
      i_to_concatenate = GetRomanNumeralBetween1And3(number - 5)
      @numbers << "V#{i_to_concatenate}"
    end

    @numbers
  end

  def GetRomanNumeralBetween1And3(number)
    'I' * number 
  end

end