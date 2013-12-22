class RomanNumeral
  def initialize
    @numbers = []
    @conversions = { 5 => 'V', 10 => 'X' }
  end
  
  def get_numbers
    (1..3000).each do |number|
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
      if @conversions.key?(number)
        convertedNumber = @conversions[number]
      end

      if @conversions.key?(number + 1)
        superiorNumber = @conversions[number + 1]      
        convertedNumber = "I#{superiorNumber}"
      end

      (1..3).each do |diff_with_symbol_num|
        if @conversions.key?(number - diff_with_symbol_num)
          lower_symbol_number = number - diff_with_symbol_num
          convertedNumber = convert_number_with_symbol_and_n_I(number, lower_symbol_number)
        end
      end
    end

    convertedNumber
  end

  def get_roman_numeral_between_1_and_3(number)
    'I' * number 
  end

  def convert_number_with_symbol_and_n_I(number, lower_symbol_number)
    i_to_concatenate = convert(number - lower_symbol_number)
    lower_symbol = @conversions[lower_symbol_number]
    convertedNumber = "#{lower_symbol}#{i_to_concatenate}"
    convertedNumber
  end

end