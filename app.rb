
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


def game_flow(player1, player2)
  while player1.life_points > 0 && player2.life_points > 0
    puts "Voici l'état de chaque joueur :"
    player1.show_state
    player2.show_state
    puts "------------"
    puts "Passons à la phase d'attaque :"
    player1.attacks(player2)
    if player2.is_dead?
      break
    end
    player2.attacks(player1)
    puts "------------"
  end
end


def perform()
  # initilisation des joueurs
  player1 = Player.new(PLAYER1_NAME) # joueur 1
  player2 = Player.new(PLAYER2_NAME) # joueur 2
  # déroulement du jeu
  game_flow(player1, player2)
end


  
# constantes 
PLAYER1_NAME = "Josiane"
PLAYER2_NAME = "José"
# appel perform 
perform
#binding.pry