require 'minitest/autorun'
require 'stringio'
require_relative '../app/kata_fizz_buzz'

class KataFizzBuzzFixture < MiniTest::Test

	def test_should_print_a_sequence_starting_with_1_and_2
		kataFizzBuzz = KataFizzBuzz.new
		output = capture_stdout { kataFizzBuzz.printSequence }
		assert_match /^1, 2.*/, output
	end

	#Print on STDOUT a sequence of numbers from 1 to 3 with 'Fizz' instead of 3
	def test_should_print_Fizz_instead_of_3
		kataFizzBuzz = KataFizzBuzz.new
		output = capture_stdout { kataFizzBuzz.printSequence }
		assert_match /^1, 2, Fizz.*/, output
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