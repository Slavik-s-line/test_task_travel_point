class Animal
  attr_accessor :species, :age, :sex

  @@all_animals = []

  def initialize(species, age, sex)
    @species = species
    @age = age
    @sex = sex
  end

  def self.monkeys
    @@all_animals.select! { |animal| animal.species == 'monkey' }
    self
  end

  def self.age_less_than(max_age)
    @@all_animals.select! { |animal| animal.age < max_age }
    self
  end

  def self.males
    @@all_animals.select { |animal| animal.sex == 'male' }
  end

  def self.add(animal)
    @@all_animals << animal
  end
end

Animal.add(Animal.new('monkey', 3, 'male'))
Animal.add(Animal.new('squirrel', 5, 'female'))
Animal.add(Animal.new('monkey', 1, 'male'))
Animal.add(Animal.new('monkey', 11, 'male'))

filtered_animals = Animal.monkeys.age_less_than(5).males
filtered_animals.each do |animal|
  puts "Species: #{animal.species}, Age: #{animal.age}, Sex: #{animal.sex}"
end
