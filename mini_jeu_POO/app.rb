require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Le status de nos 2 joueurs"
player1.show_state
player2.show_state
puts ""

while player1.life_points > 0 && player2.life_points > 0 do
  puts "Maintenant le combat!"
  player1.attacks(player2)
  break if player2.life_points <= 0
  player2.attacks(player1)

  puts ""
  puts "Le status de nos 2 joueurs"
  player1.show_state
  player2.show_state
  puts ""
end

binding.pry