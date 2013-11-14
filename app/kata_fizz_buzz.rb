require_relative File.dirname(__FILE__) + '/helper'

class KataFizzBuzz
	def printSequence
		sequence = []

		(1...100).each do |number|
			if Helper.isDivisible(number, 3) && Helper.isDivisible(number, 5)
				sequence << 'FizzBuzz'
			elsif Helper.isDivisible(number, 3)
				sequence << 'Fizz'
			elsif Helper.isDivisible(number, 5)
				sequence << 'Buzz'
			else
				sequence << number
			end
		end

		print sequence.join(', ')
	end
end