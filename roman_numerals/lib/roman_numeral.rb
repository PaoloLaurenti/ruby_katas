class RomanNumeral
  def initialize
    @numbers = []
  end
  
  def get_numbers
    (1..2).each do |number|
      @numbers << 'I' * number  
    end

    @numbers
  end
end