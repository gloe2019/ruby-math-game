
require './game'

puts "Welcome"

print "Ready Player 1! Enter your username: "
p1 = gets.chomp
print "Ready Player 2! Enter your username: "
p2 = gets.chomp

# START GAME
gg = Game.new(p1, p2)
gg.run_game


# run while loop, start loop with question generator!