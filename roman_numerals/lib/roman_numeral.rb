class RomanNumeral
  def initialize
    @numbers = []
  end
  
  def get_numbers
    (1..3).each do |number|
      @numbers << 'I' * number  
    end

    @numbers << 'IV'

    @numbers
  end
end