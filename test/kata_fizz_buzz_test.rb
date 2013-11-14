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
		counter = iterate_on_output do |item, index|
			assert item.to_i == index || @allowedWords.include?(item)
		end

		assert_equal 100, counter, 'The sequence from 1 to 100 is not respected'
	end

	def test_should_print_Fizz_instead_every_number_multiple_of_3
		iterate_on_output do |item, index|
			assert_item_is_Fizz(index, item) if Helper.isDivisible(index, 3)
		end
	end

	def test_should_print_Buzz_instead_every_number_multiple_of_5
		iterate_on_output do |item, index|
			assert_item_is_Buzz(index, item) if Helper.isDivisible(index, 5)
		end
	end

	def test_should_print_FizzBuzz_instead_of_every_number_multiple_of_3_and_5
		iterate_on_output do |item, index|
			assert_item_is_FizzBuzz(index, item) if Helper.isDivisibleByManyDivisors(index, 3, 5)
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

	def iterate_on_output
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

	def assert_item_is_Fizz(index, item)
		assert_match /^Fizz(Buzz)?$/, item, "Problem on index #{index}"
	end

	def assert_item_is_Buzz(index, item)
		assert_match /^(Fizz)?Buzz$/, item, "Problem on index #{index}"
	end

	def assert_item_is_FizzBuzz(index, item)
		assert_equal 'FizzBuzz', item, "Problem on index #{index}"
	end
end