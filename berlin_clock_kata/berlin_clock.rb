class BerlinClock

  def initialize(timer)
    @listener = nil
    @timer    = timer
  end

  def add_listener(listener)
    @listener = listener
  end

  def start
    @timer.add_listener('Berlin Clock', self)
    @timer.start
  end

  def timer_tick(time)
    notify_top_yellow_lights(time)
    notify_red_lights(time)
  end

  def notify_top_yellow_lights(time)
    time.sec.even? ? @listener.top_yellow_light_on : @listener.top_yellow_light_off
  end

  def notify_red_lights(time)
    if time.hour < 5
      @listener.first_red_light_off
      @listener.second_red_light_off
      @listener.third_red_light_off
      @listener.fourth_red_light_off
      @listener.fifth_red_light_off
      @listener.sixth_red_light_off
      @listener.seventh_red_light_off
      @listener.eighth_red_light_off
    end
  end

end