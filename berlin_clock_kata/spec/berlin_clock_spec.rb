require 'rspec'
require 'instant_timer'
require 'spec_helper'
require 'expectation_helper'
require_relative '../berlin_clock'

describe 'Berlin Clock' do

  before(:each) do
    @listener = double('listener')
    @listener.as_null_object
    @spec_helper = SpecHelper.new(@listener)
    @expectation_helper = ExpectationHelper.new(@listener)
  end

  it 'should turn on the top yellow light when seconds are evens numbers' do
    instant_timer = InstantTimer.new(Time.gm(2014, 10, 3, 00, 01, 04))
    @expectation_helper.expect_top_yellow_light_on
    berlin_clock = @spec_helper.create_berlin_clock(instant_timer)

    berlin_clock.start
  end

  it 'should turn off the top yellow light when seconds are odds numbers' do
    instant_timer = InstantTimer.new(Time.gm(2014, 10, 3, 00, 01, 13))
    @expectation_helper.expect_top_yellow_light_off
    berlin_clock = @spec_helper.create_berlin_clock(instant_timer)

    berlin_clock.start
  end

  it 'should turn off all the red lights of the first row when hours are less than five' do
    instant_timer = InstantTimer.new(Time.gm(2014, 10, 3, 04, 59, 59))
    @expectation_helper.expect_all_red_lights_off
    berlin_clock = @spec_helper.create_berlin_clock(instant_timer)

    berlin_clock.start
  end
end

