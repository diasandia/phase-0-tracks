#6.4 Modules

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :( "
  end

  def self.yelling_happily(words)
    words + "!!!" + "Happy, Happy!" + " :) "
  end
end

#Driver Code
p Shout.yell_angrily("No")
p Shout.yelling_happily("HELLO")
