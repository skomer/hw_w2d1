require 'pry-byebug'

class Car

  attr_reader :fuel, :speed

  def initialize(name, engine)
    @name = name
    @engine = engine
    @fuel = 100
    @speed = 0
  end

  def accelerate
    @speed += 10
    if @fuel >= 5
      @fuel -= 5
    end
    return @speed, @fuel
  end

  def brake
    if @speed >= 10
      @speed -= 10
    end
  end


end