require 'minitest/autorun'
require 'stringio'
require_relative '../app/kata_fizz_buzz'

class KataFizzBuzzFixture < MiniTest::Test
	
	def setup
		kataFizzBuzz = KataFizzBuzz.new
		@output = capture_stdout { kataFizzBuzz.printSequence }
		@allowedWords = ["Fizz", "Buzz", "FizzBuzz"]
	end

	def test_should_print_a_sequence_starting_with_1_and_2
		assert_match /^1, 2.*/, @output
	end

	def test_should_print_Fizz_instead_of_3
		assert_match /^1, 2, Fizz.*/, @output
	end

	def test_should_print_Buzz_instead_of_5
		assert_match /^1, 2, Fizz, 4, Buzz.*/, @output
	end

	def test_should_print_numbers_from_1_to_100
		items = @output.split(", ")
		counter = 1
		items.each do |item|
			break unless (item.to_i == counter || @allowedWords.include?(item))
			counter += 1
		end

		assert_equal 100, counter, "The sequence from 1 to 100 is not respected"
	end

	private

	def capture_stdout(&block)
	  original_stdout = $stdout
	  $stdout = fake = StringIO.new
	  begin
	    yield
	  ensure
	    $stdout = original_stdout
	  end
	  fake.string
	end
end