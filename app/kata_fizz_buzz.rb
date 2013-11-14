class KataFizzBuzz
	def printSequence
		sequence = []

		(1...100).each do |number|
			if number == 3
				sequence << "Fizz"
			elsif number == 5
				sequence << "Buzz"
			else
				sequence << number
			end
		end

		print sequence.join(", ")
	end
end