require 'rspec'
require_relative '../berlin_clock'

describe 'Berlin Clock' do
  it 'shows top yellow lamp switched on when seconds are even numbers' do
    instant_timer = InstantTimer.new(DateTime.new(2014, 3, 14, 00, 00, 14))
    listener = double('listener')
    listener.should_receive('top_yellow_light_on')

    berlin_clock = BerlinClock.new(instant_timer, listener)
    berlin_clock.start

  end
end

class InstantTimer
  def initialize(instant)
    @instant = instant
  end
end