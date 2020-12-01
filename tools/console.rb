require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = CarOwner.new("Bob")
mary = CarOwner.new("Mary")
sam = CarOwner.new("Sam")



mechanic1 = Mechanic.new("Billy", "antique")
mechanic2 = Mechanic.new("Joe", "exotic")
mechanic3 = Mechanic.new("Harry", "clunker")


car1 = Car.new("1957 Chevy Bel Air", "Chevy", "antique", bob, mechanic1)
car2 = Car.new("1999 Honda Civic", "Honda", "clunker", bob, mechanic3)
car3 = Car.new("2020 Lambo Aventador", "Lamborghini", "exotic", mary, mechanic2)
car4 = Car.new("1957 Corvette", "Corvette", "antique", mary, mechanic3)
car5 = Car.new("1992 Ford Something", "Ford", "clunker", sam, mechanic3)
car6 = Car.new("2020 Portofino", "Ferrari", "exotic", sam, mechanic2)

binding.pry
0
