class BerlinClock

  def initialize(timer)
    @listener = nil
    @timer     = timer
  end

  def add_listener(listener)
    @listener = listener
  end

  def start
    @timer.add_listener('Berlin Clock', self)
    @timer.start
  end

  def timer_tick(time)
    if time.sec.even?
      @listener.top_yellow_light_on
    else
      @listener.top_yellow_light_off
    end
  end
end