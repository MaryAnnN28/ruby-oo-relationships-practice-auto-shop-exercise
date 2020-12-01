class Car

  attr_reader :make, :model, :classification, :owner, :mechanic


  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    @@all << self
  end

  def self.all
    @@all
  end

  # get a list of all car classifications
  # provides classification for each car instance
  def self.classifications
    self.all.map { |car| car.classification }
  end
  
   # if we want just the classification type,
  #  self.all.map { |car| car.classification }.uniq 


  # Get a list of mechanics that have an expertise
  # that matches the passed in car classication
  def self.find_mechanics(classification)
    Mechanic.all.select { |mechanic| mechanic.specialty == classification }
  end


end
