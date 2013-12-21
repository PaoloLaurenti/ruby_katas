class Fixnum
	def is_divisible_by? divisor
		self % divisor == 0
	end

	def is_divisible_by_many_divisors?(*divisors)
		divisors.each do |divisor|
			return unless self.is_divisible_by?(divisor)
		end

		true
	end

	def has_digit?(digit)
		self.to_s.include? digit.to_s
	end
end