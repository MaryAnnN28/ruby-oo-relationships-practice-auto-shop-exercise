class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all
    @@all 
  end

  # Created Helper Method for some methods below 
  def self.all_cars
    Car.all.select { |car| car.owner }
  end


  # `CarOwner#cars` Get a list of all the cars that 
  # a specific owner has
  def cars 
    cars = Car.all.select { |car| car.owner == self }
  end

  # `CarOwner#mechanics` Get a list of all the mechanics 
  # that a specific owner goes to
  def mechanics
    self.cars.map { |car| car.mechanic }.uniq
  end

  # `CarOwner.average_number_of_cars` Get the average 
  # amount of cars owned for all owners
  def self.average_number_of_cars
    self.all.map { |owner| owner.cars.count}.sum / self.all.length
  end






end
