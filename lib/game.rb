#require 'pry'

class Player

    attr_accessor :name , :life_points
    

    def initialize (name, life_points)
        @name = name
        @life_points = life_points
        
    end

    def show_state ()
        puts " #{name} a #{life_points} points de vie "
    end
    

    def gets_damage (damage_received)
        
        
        
        @life_points -= damage_received

        if @life_points <= 0
           puts " le joueur #{name} a été tué!"
        end

    end
    #binding.pry
end




player1 = Player.new("José", 10)
puts player1.name
puts player1.life_points
puts player1.gets_damage(5)
puts player1.show_state
