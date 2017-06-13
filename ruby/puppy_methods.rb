class Puppy

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

