require 'bundler'
class Player
    attr_accessor :name , :life_points
  
    def initialize(name, life_points)
        @name = name
        @life_points = life_points
    end#initialize

    def show_state#()
        puts " #{name} a #{life_points} points de vie "
    end#show_state

    def gets_damage(points)
        @life_points -= points
          if @life_points <= 0
             puts " le joueur #{name} a été tué!"
          end
    end#gets_damage

    def compute_damage
        return rand(1..6)
    end#compute_damage

    def attacks(player)
        puts "le joueur #{@name} attaque le joueur #{player.name}"
        damage = compute_damage
        player.gets_damage(damage)
        puts "Il lui inflige #{damage} points de dommages"
    end#attacks(player)
 #binding.pry
end#class Player
  
  player1 = Player.new("Josiane", 10)
  player2 = Player.new("José", 10)
  player1.attacks(player2)
  player2.show_state

  binding.pry
