class RomanNumeral
  def initialize
    @first_level_symbols = {1..3 => 'I', 4..4 => 'IV', 5..8 => 'V', 9..9 => 'IX', 
                            10..39 => 'X', 40..49 => 'XL', 50..89 => 'L', 90..99 => 'XC',
                            100..399 => 'C', 400..499 => 'CD', 500..899 => 'D', 900..999 => 'CM',
                            1000..3000 => 'M'}
  end

  def convert(number)
    @first_level_symbols.keys.each do |range|
      return "#{@first_level_symbols[range]}#{convert(number - range.begin)}" if range.cover?(number)
    end

    ''
  end

  def convert_to_arabic(roman_number)
    sorted_symbols_conversions = @first_level_symbols.sort_by { |range, roman_num| [-roman_num.length, -range.begin] }

    sorted_symbols_conversions.each do |range, roman_num|
      return range.begin + convert_to_arabic(roman_number[roman_num.length..-1]) if roman_number.start_with?(roman_num)
    end
    
    0
  end
end