class BerlinClock

  def initialize(instant_timer, listener)
    @listener = listener
  end

  def start
    @listener.top_yellow_light_on
  end

end