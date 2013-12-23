class RomanNumeral
  def initialize
  end
  
  def get_numbers
    roman_numbers = []

    (1..100).each do |number|
      roman_numbers << convert(number)
    end

    roman_numbers
  end

private

  def convert(number)
    if number == 1
      return 'I'
    end

    return "I#{convert(number - 1)}"
  end

end