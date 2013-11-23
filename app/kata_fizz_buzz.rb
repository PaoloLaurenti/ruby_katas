require_relative File.dirname(__FILE__) + '/Extensions/fix_num'

class KataFizzBuzz
	def printSequence
		sequence = []

		(1...100).each do |number|
			if number.is_divisible?(3) && number.is_divisible?(5)
				sequence << 'FizzBuzz'
			elsif number.is_divisible?(3)
				sequence << 'Fizz'
			elsif number.is_divisible?(5)
				sequence << 'Buzz'
			else
				sequence << number
			end
		end

		print sequence.join(', ')
	end
end