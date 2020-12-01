class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty

  @@all << self
end

# List of all mechanics
def self.all
  @@all 
end

# Get a list of all cars that a mechanic services
def cars
  Car.all.select { |car| car.mechanic == self }
end

# Get a list of all the car owners that go to a specific mechanic
def car_owners
  self.cars.map { |car| car.owner }
end

# Get a list of the names of all car owners who go to a specific mechanic
def car_owners_names
  self.car_owners.map { |owner| owner.name }
end



end
