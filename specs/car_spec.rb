require 'minitest/autorun'
require 'minitest/rg'
require_relative '../car_class.rb'
require_relative '../engine_class.rb'

class TestCar < MiniTest::Test

  def setup
    @turbo_engine = Engine.new(25,10)
    @treacle_engine = Engine.new(3, 50)
    @fiesta = Car.new("Ford Fiesta", @treacle_engine)
    @posh_car = Car.new("The Panther", @turbo_engine)
  end

  def test_accelerate
    @fiesta.accelerate
    assert_equal(10, @fiesta.speed)
    assert_equal(95, @fiesta.fuel)
  end

  def test_brake
    @posh_car.accelerate
    @posh_car.accelerate
    @posh_car.brake
    assert_equal(10, @posh_car.speed)
  end

end