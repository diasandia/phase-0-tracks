class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
    i.times { puts "woof"}
  end

  def rollover
    p "*rollover*"
  end

  def dog_years(human_years)
    dog_years = 7 * human_years
    puts dog_years
  end

  def high_five
    puts "paw"
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.rollover
fido.dog_years(2)
fido.high_five

class Car

  def initialize
    puts "Initializing new car instance ..."
  end

  def car_manufacture(make,model)
    puts "The car is made by #{make} and the #{model}"
  end

  def energy_efficient(type)
    if type.downcase== "electric" || type.downcase == "hybrid"
      puts "The car is energy efficient"
    else
      puts "The care is not energy efficient. :("
    end
  end

end

car_array = []
index = 0
until index == 50
  car_array[index] = Car.new
  index += 1
end


car_array.each do |x|
  x.car_manufacture("Kia", "Sportage")
  x.energy_efficient("hybrid")
end
