require_relative '../bowling_game'

describe "Bowling game," do
  before { @game = BowlingGame.new }

  describe "when is a gutter game," do
    it "the score should be 0" do
      rolls_with_same_pins_knocket_out(10, 0)
      @game.score.should eq(0)
    end
  end

  describe "when the player has knocket out one pin per frame," do
    it "the score should be 10" do
      rolls_with_same_pins_knocket_out(10, 1)
      @game.score.should eq(10)
    end
  end

  private

  def rolls_with_same_pins_knocket_out(rolls, pins_per_roll)
    (1..rolls).each do |roll|
        @game.roll(pins_per_roll)
      end
  end
end
