class RomanNumeral
  def initialize
    @first_level_symbols = { 1..3 => 'I', 4..4 => 'IV', 5..8 => 'V', 9..9 => 'IX', 
                            10..39 => 'X', 40..49 => 'XL', 50..89 => 'L', 90..99 => 'XC',
                            100..399 => 'C', 400..499 => 'CD', 500..899 => 'D', 900..999 => 'CM',
                            1000..3000 => 'M'}
  end
  
  def get_numbers
    roman_numbers = []

    (1..3000).each do |number|
      roman_numbers << convert(number)
    end

    roman_numbers
  end

private

  def convert(number)
    @first_level_symbols.keys.each do |range|
      return "#{@first_level_symbols[range]}#{convert(number - range.begin)}" if range.cover?(number)
    end

    ''
  end
end