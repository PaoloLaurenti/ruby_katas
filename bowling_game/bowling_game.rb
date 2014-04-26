class BowlingGame

  def initialize
    @score = 0
  end

  def roll(pin)
    @score += pin
  end

  def score()
    @score
  end

private
  @score

end
