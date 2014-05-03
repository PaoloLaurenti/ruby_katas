class SpecHelper

  def initialize(listener)
    @listener = listener
  end

  def create_berlin_clock(instant_timer)
    berlin_clock = BerlinClock.new(instant_timer)
    berlin_clock.add_listener(@listener)
    berlin_clock
  end

end