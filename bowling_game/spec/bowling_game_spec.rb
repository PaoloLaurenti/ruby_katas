require_relative '../bowling_game'

describe 'Bowling game' do
  before { @game = BowlingGame.new }

  describe 'when is a gutter game' do
    it { @game.score.should eq(0) }
  end
end
