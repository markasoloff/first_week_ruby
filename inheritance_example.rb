# Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.

module Skid
  def lose_control
    puts "Sccccccrt!"
  end
end


class Vehicle
  include Skid
  attr_reader :speed, :direction
  def initialize(input)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Car < Vehicle
  include Skid
  attr_reader :fuel, :make, :model
  def initialize(input)
     super(input)
    @fuel = input[:fuel]
    @make = input[:make]
    @model = input[:model]
    end
    
  def honk_horn
    puts "Beeeeeeep!"
  end
end


class Bike < Vehicle
  include Skid
  attr_reader :speed, :type, :weight
  def initialize(input)
    super(input)
    @speed = input[:speed]
    @type = input[:type]
    @weight = input[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(speed: 10, type: "Schwinn", weight: "bantam")
bike.ring_bell
# puts bike.speed
# puts bike.accelerate
# puts bike.type
# puts bike.weight
bike.lose_control



car = Car.new(fuel: "diesel", make: "chevy", model: "camero")
car.honk_horn
# puts car.direction
# puts car.speed
# puts car.accelerate
# puts car.fuel
# puts car.make
# puts car.model
car.lose_control

