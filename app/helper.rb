class Helper
	class << self
		def isDivisible(dividend, divisor)
			dividend % divisor == 0
		end

		def isDivisibleByManyDivisors(dividend, *divisors)
			divisors.each do |divisor|
				return unless isDivisible(dividend, divisor)
			end

			true
		end
	end
end