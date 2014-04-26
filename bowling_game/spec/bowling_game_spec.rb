require_relative '../bowling_game'

describe "Bowling game" do
  before { @game = BowlingGame.new }

  describe "when is a gutter game" do
    it "the score is 0" do 
      (1..10).each do |roll|
        @game.roll(0)
      end
      @game.score.should eq(0) 
    end
  end
end
