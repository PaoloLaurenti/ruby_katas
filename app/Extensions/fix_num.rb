class Fixnum
	def is_divisible? divisor
		self % divisor == 0
	end

	def is_divisible_by_many_divisors?(*divisors)
		divisors.each do |divisor|
			return unless self.is_divisible?(divisor)
		end

		true
	end
end