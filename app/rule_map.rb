class RuleMap
	attr_reader :word, :rule

	def initialize(word, rule)
		@word = word
		@rule = rule
	end

	def get_text_of(number)
		if @rule.call number
			@word
		else
			''
		end
	end
end