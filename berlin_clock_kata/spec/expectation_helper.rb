class ExpectationHelper
  def initialize(listener)
    @listener = listener
  end

  def expect_top_yellow_light_on
    @listener.should_receive('top_yellow_light_on')
    @listener.should_not_receive('top_yellow_light_off')
  end

  def expect_top_yellow_light_off
    @listener.should_receive('top_yellow_light_off')
    @listener.should_not_receive('top_yellow_light_on')
  end

  def expect_first_red_light_off
    @listener.should_receive('first_red_light_off')
    @listener.should_not_receive('first_red_light_on')
  end

  def expect_first_red_light_on
    @listener.should_receive('first_red_light_on')
    @listener.should_not_receive('first_red_light_off')
  end

  def expect_second_red_light_off
    @listener.should_receive('second_red_light_off')
    @listener.should_not_receive('second_red_light_on')
  end

  def expect_second_red_light_on
    @listener.should_receive('second_red_light_on')
    @listener.should_not_receive('second_red_light_off')
  end

  def expect_third_red_light_off
    @listener.should_receive('third_red_light_off')
    @listener.should_not_receive('third_red_light_on')
  end

  def expect_fourth_red_light_off
    @listener.should_receive('fourth_red_light_off')
    @listener.should_not_receive('fourth_red_light_on')
  end

  def expect_all_first_rows_red_lights_off
    expect_first_red_light_off
    expect_second_red_light_off
    expect_third_red_light_off
    expect_fourth_red_light_off
  end



end