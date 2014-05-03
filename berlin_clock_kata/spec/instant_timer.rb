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