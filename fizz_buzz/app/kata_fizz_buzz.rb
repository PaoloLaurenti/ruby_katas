require_relative File.dirname(__FILE__) + '/Extensions/fix_num'
require_relative File.dirname(__FILE__) + '/rule_map'

class KataFizzBuzz
	attr_reader :start_sequence, :end_sequence, :rules_map

	def initialize(start_sequence, end_sequence, rules_map)
		@start_sequence = start_sequence
		@end_sequence = end_sequence
		@rules_map = rules_map
	end

	def printSequence
		sequence = []

		(@start_sequence..@end_sequence).each do |number|
			sequence << get_word_of(number)
		end

		print sequence.join(', ')
	end

	def get_word_of(number)
		word = get_word_by_rules_of(number)
		if word == ''
			word = number.to_s
		end

		word
	end

	def get_word_by_rules_of(number)
		word = ''
		rules_map.each do |rule_map|
			word.concat rule_map.get_text_of number
		end
		word
	end
end