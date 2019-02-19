class Game

    @number_of_lives = 3

    def start_game
        number1 = Random.new.rand(0...10)
        number2 = Random.new.rand(0...10)
        puts number1
        
    end

end

game = Game.new
game.start_game