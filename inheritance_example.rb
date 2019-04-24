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
  def initialize(input_options)
    super()
    @make = input_options[:make]
    @model = input_options[:model]
    @fuel = input_options[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @type = input_options[:type]
    @weight = input_options[:weight]
    @gears = input_options[:gears]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: 10,
              model: "Cooper S",
              make: "Mini"
              )

bike = Bike.new(
                type: "Mountain",
                gears: 16,
                weight: 27
                )

vehicle = Vehicle.new

p vehicle
p car
p bike



