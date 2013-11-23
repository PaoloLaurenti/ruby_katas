require_relative File.dirname(__FILE__) + '/Extensions/fix_num'

class KataFizzBuzz
	attr_reader :start_sequence, :end_sequence

	def initialize(start_sequence, end_sequence)
		@start_sequence = start_sequence
		@end_sequence = end_sequence
	end

	def printSequence
		sequence = []

		(@start_sequence...@end_sequence).each do |number|

			ret_string = ''

			if number.is_divisible?(3) || number.has_digit?(3)
				ret_string = 'Fizz'
			end

			if number.is_divisible?(5) || number.has_digit?(5)
				ret_string = ret_string.concat('Buzz')
			end

			if ret_string == ''
				ret_string = number
			end

			sequence << ret_string
		end

		print sequence.join(', ')
	end
end