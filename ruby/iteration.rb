# def say_bye
#   puts "Bye Tom"
#   3.times {yield}
# end

# say_bye {puts "bye"}


actors = ["Ariana", "Justin", "Beyonce", "Taylor"]
main_characters = {
  Tom:  "Jerry",
  JLO:  "Marc Anthony",
  Harry: "Ron"
}

actors.each do |actor|
  puts actor
end

main_characters.each do |friend_1, friend_2 |
  puts main_characters
end

actors.map! do |actor|
  puts actors
  actor.reverse
end

new_main_characters = main_characters.map do |friend_1, friend_2|
  puts main_characters [friend_1]
  main_characters[friend_1].reverse
end

p new_main_characters
