require 'rspec'
require_relative '../berlin_clock'

describe 'Berlin Clock' do

  before(:each) do
    @listener = double('listener')
  end

  it 'should turn on the top yellow lamp when seconds are evens numbers' do
    instant_timer = InstantTimer.new(Time.gm(2014, 10, 3, 00, 01, 04))
    @listener.should_receive('top_yellow_light_on')

    berlin_clock = BerlinClock.new(instant_timer, @listener)

    berlin_clock.start
  end

  it 'should turn off the top yellow lamp when seconds are odds numbers' do
    instant_timer = InstantTimer.new(Time.gm(2014, 10, 3, 00, 01, 13))
    @listener.should_receive('top_yellow_light_off')

    berlin_clock = BerlinClock.new(instant_timer, @listener)

    berlin_clock.start
  end
end

class InstantTimer
  def initialize(instant)
    @instant = instant
  end

  def add_listener(key, listener)
    @listener = listener
  end

  def start
    @listener.timer_tick(@instant)
  end
end