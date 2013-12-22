class RomanNumeral
  def initialize
    @numbers = []
  end
  
  def get_numbers
    (1..8).each do |number|
      @numbers << convert(number)
    end

    @numbers
  end

private

  def convert(number)
    convertedNumber = 0
    if number <= 3
      convertedNumber = get_roman_numeral_between_1_and_3(number) 
    else
      convertedNumber = 'IV' if number == 4
      convertedNumber = 'V' if number == 5

      if number >= 6
        i_to_concatenate = convert(number - 5)
        convertedNumber = "V#{i_to_concatenate}"
      end
    end

    convertedNumber
  end

  def get_roman_numeral_between_1_and_3(number)
    'I' * number 
  end

end