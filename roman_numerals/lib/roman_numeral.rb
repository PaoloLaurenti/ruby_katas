class RomanNumeral
  def initialize
    @main_conversions = {1..3 => 'I', 4..4 => 'IV', 5..8 => 'V', 9..9 => 'IX', 
                            10..39 => 'X', 40..49 => 'XL', 50..89 => 'L', 90..99 => 'XC',
                            100..399 => 'C', 400..499 => 'CD', 500..899 => 'D', 900..999 => 'CM',
                            1000..3000 => 'M'}
  end

  def convert(number)
    return '' if number <= 0

    @main_conversions.each do |range, roman_num|
      return "#{roman_num}#{convert(number - range.begin)}" if range.cover?(number)
    end

    ''
  end

  def convert_to_arabic(roman_number)
    return 0 if roman_number == ''

    sorted_main_conversions = get_main_conversions_sorted_by_roman_string_length_and_value
    sorted_main_conversions.each do |range, roman_num|
      return range.begin + convert_to_arabic(roman_number[roman_num.length..-1]) if roman_number.start_with?(roman_num)
    end

    0
  end

  private

  def get_main_conversions_sorted_by_roman_string_length_and_value
    @main_conversions.sort_by { |range, roman_num| [-roman_num.length, -range.begin] }
  end
end