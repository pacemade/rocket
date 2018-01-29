require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_initialize_attributes_valid
    skip
    actual = @rocket.valid?
    expected = true

    assert_equal(expected, actual)
  end

  def test_initialize_flying_default_false
    actual = @rocket.flying?
    expected = false

    assert_equal(expected, actual)
  end

  def test_initialize_as_flying
    @flyer = Rocket.new(options = {:flying => true})
    actual = @flyer.flying?

    expected = true

    assert_equal(expected, actual)
  end

  def test_lift_off_returns_flying_to_true
    @rocket.lift_off
    actual = @rocket.flying?

    expected = true
    assert_equal(expected, actual)
  end

  def test_land_flying_returns_false
    actual = @rocket.land
    @rocket.flying?
    expected = false

    assert_equal(expected, actual)
  end

  def test_status_not_flying_returns_ready
    @rocket.land
    actual = @rocket.status
    expected = "Rocket #{@rocket.name} is ready for lift off!"

    assert_equal(expected, actual)
  end

  def test_color_change
    @rocket.colour=("beans")
    actual = @rocket.colour

    expected = "beans"
    assert_equal(expected, actual)
  end
end
