require 'minitest/autorun'
require 'stringio'
require_relative '../app/kata_fizz_buzz'

class KataFizzBuzzFixture < MiniTest::Test

	def setup
		kataFizzBuzz = KataFizzBuzz.new
		@output = capture_stdout { kataFizzBuzz.printSequence }
	end

	def test_should_print_a_sequence_starting_with_1_and_2
		assert_match /^1, 2.*/, @output
	end

	def test_should_print_Fizz_instead_of_3
		assert_match /^1, 2, Fizz.*/, @output
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