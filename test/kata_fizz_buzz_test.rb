require 'minitest/autorun'
require 'stringio'
require_relative '../app/kata_fizz_buzz'

class KataFizzBuzzTest < MiniTest::Test

	def setup
		fizz_rule_map = RuleMap.new('Fizz', lambda { |number| number.is_divisible_by?(3) || number.has_digit?(3) })
		buzz_rule_map = RuleMap.new('Buzz', lambda { |number| number.is_divisible_by?(5) || number.has_digit?(5) })

		kataFizzBuzz = KataFizzBuzz.new(1, 100, [fizz_rule_map, buzz_rule_map])
		@output = capture_stdout { kataFizzBuzz.printSequence }
		@words_can_rules_apply = ['Fizz', 'Buzz', 'FizzBuzz']
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
		counter = iterate_on_std_output do |item, index|
			assert item.to_i == index || @words_can_rules_apply.include?(item)
		end

		assert_equal 100, counter, 'The sequence from 1 to 100 is not respected'
	end

	def test_should_print_Fizz_instead_of_every_number_multiple_of_3
		iterate_on_std_output do |item, index|
			assert_item_is_Fizz(index, item) if index.is_divisible_by?(3)
		end
	end

	def test_should_print_Buzz_instead_of_every_number_multiple_of_5
		iterate_on_std_output do |item, index|
			assert_item_is_Buzz(index, item) if index.is_divisible_by?(5)
		end
	end

	def test_should_print_FizzBuzz_instead_of_every_number_multiple_of_3_and_5
		iterate_on_std_output do |item, index|
			assert_item_is_FizzBuzz(index, item) if index.is_divisible_by_many_divisors?(3, 5)
		end
	end

	def test_should_print_Fizz_instead_of_every_number_containing_3_as_digit
		iterate_on_std_output do |item, index|
			assert_item_is_Fizz(index, item) if index.has_digit?(3)
		end
	end

	def test_should_print_Buzz_instead_of_every_number_containing_5_as_digit
		iterate_on_std_output do |item, index|
			assert_item_is_Buzz(index, item) if index.has_digit?(5)
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

	def iterate_on_std_output
		items = get_output_items()
		index = 1
		items.each do |item|
			yield(item, index)
			index += 1
		end

		index - 1
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