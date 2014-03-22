require_relative '../lib/game.rb'
require_relative '../lib/grid.rb'
require 'fake_ticker.rb'

describe 'how game starts' do
  let(:fakeTicker) { FakeTicker.new }

  describe 'with 1x1 grid' do
    let(:game) { Game.new(Grid.new(1, 1), fakeTicker) }

    before{ game.start }

    it 'wins the first level in 1 tick' do
      fakeTicker.tick
      
      expect(game.is_ended).to be_true
      expect(game.has_pacman_won).to be_true
    end
  end

end
