# Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.

class Vehicle
  def initialize
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
  def initialize(fuel, make, model)
     super
    @fuel = fuel
    @make = make
    @model = model
    end

  def fuel
    @fuel = "diesel"
  end

  def make
    @make = "chevy"
  end

  def model
    @model = "camero"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end


class Bike < Vehicle
  def initialize
    super
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
bike.ring_bell

car = Car.new(fuel: "diesel", make: "chevy", model: "camero")
car.honk_horn