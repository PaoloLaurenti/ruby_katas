require 'minitest/autorun'
require 'stringio'
require_relative '../app/kata_fizz_buzz'

class KataFizzBuzzTest < MiniTest::Test
	
	def setup
		kataFizzBuzz = KataFizzBuzz.new
		@output = capture_stdout { kataFizzBuzz.printSequence }
		@allowedWords = ['Fizz', 'Buzz', 'FizzBuzz']
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
		counter = method do |item, index|
			assert item.to_i == index || @allowedWords.include?(item)
		end

		assert_equal 100, counter, 'The sequence from 1 to 100 is not respected'
	end

	def test_should_print_Fizz_instead_every_number_multiple_of_3
		method do |item, index|
			assert_match /^Fizz(Buzz)?$/, item, "Problem on index #{index}" if Helper.isDivisible(index, 3)
		end
	end

	def test_should_print_Buzz_instead_every_number_multiple_of_5
		method do |item, index|
			assert_match /^(Fizz)?Buzz$/, item, "Problem on index #{index}" if Helper.isDivisible(index, 5)
		end
	end

	def test_should_print_FizzBuzz_instead_of_every_number_multiple_of_3_and_5
		method do |item, index|
			assert_equal 'FizzBuzz', item, "Problem on index #{index}" if Helper.isDivisibleByManyDivisors(index, 3, 5)
		end
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

	def method
		items = get_output_items()
		index = 1
		items.each do |item|
			yield(item, index)
			index += 1
		end

		index
	end

	def get_output_items
		@output.split(', ')
	end
end