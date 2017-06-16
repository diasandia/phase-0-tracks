#6.4 Modules

#RELEASE 1

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :( "
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " Happy, Happy!" + " :) "
#   end
# end

# #Driver Code
# p Shout.yell_angrily("No")
# p Shout.yelling_happily("HELLO")

#---------------------
#Release 3

module Shout
  def yell_angrily(words)
    words.upcase + "!!!" + " ಠ_ಠ "
  end

  def yell_happily(words)
    words + "!!!" + " I'm happy!" + " :) "
  end
end

class Train
  include Shout
end

class TeaKettle
  include Shout
end

# DRIVER CODE::

# Instantiates instances of the classes and call the two module methods on each instance

train = Train.new
teakettle = TeaKettle.new

p train.yell_angrily("Choo choo")
p train.yell_happily("Chugga chugga")
p teakettle.yell_angrily("whistle")
p teakettle.yell_happily("I'm a quite teakettle")








#______________________________________

#DSA - NOTES::

# MIXIN MODULE - Release 2
# module Flight
#   def take_off(altitude) ** NOTE-Mix in don't require "self". Standalone modules do need "self.**
#     puts "Taking off and ascending until reaching #{altitude}..."
#   end
# end

# class Bird
#   include Flight
# end

# class Plane
#   include Flight
# end

# bird = Bird.new
# bird.take_off(800)

# plane = Plane.new
# plane.take_off(3000)
