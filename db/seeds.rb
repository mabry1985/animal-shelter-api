class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cats
    seed.generate_dogs
  end

  def generate_cats
    100.times do |i|
      cat = Cat.create!(
        name: Faker::Creature::Cat.name,
        breed: Faker::Creature::Cat.breed,
        sex: ["M", "F"].sample,
        age: rand(1..14)
      )
      puts "Cat #{i} made"
    end
  end

  def generate_dogs
    100.times do |i|
      dog = Dog.create!(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.breed,
        sex: ["M", "F"].sample,
        age: rand(1..14)
      )
      puts "Dog #{i} made"
    end
  end

end

Seed.begin
