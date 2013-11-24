require_relative 'kata_fizz_buzz'

fizz_rule_map = RuleMap.new('Fizz', lambda { |number| number.is_divisible_by?(3) || number.has_digit?(3) })
buzz_rule_map = RuleMap.new('Buzz', lambda { |number| number.is_divisible_by?(5) || number.has_digit?(5) })

@kata = KataFizzBuzz.new(1, 100, [fizz_rule_map, buzz_rule_map])
@kata.printSequence