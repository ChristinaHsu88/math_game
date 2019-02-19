require './question'
require './player'
# setting the name
puts "Player A's name: "
playerA = gets.chomp
puts "Player B's name: "
playerB = gets.chomp

current_player = Player.new(playerA)
second_player = Player.new(playerB)

# Set an initial value to alternate the player
player = 1

while (current_player.lives > 0 && second_player.lives > 0) do
    
    new_player = (player === 1) ? current_player : second_player
    question = Question.new()
    
    puts "--------------New Turn--------------"
    
    puts "#{new_player.name}: #{question.generate_question}"
    
    userAnswer = gets.chomp
    @result = question.check_answer?(userAnswer.to_i)

    if @result
        puts "Yes! You are correct"
        puts "#{current_player.name} #{current_player.lives}/3 lives and  #{second_player.name} #{second_player.lives}/3 lives"
    else
        puts "Seriously? No"
        #new_player.lives -= 1
        new_player.wrong_answer
        puts "#{current_player.name} #{current_player.lives}/3 lives and  #{second_player.name} #{second_player.lives}/3 lives"
    end

    player = (player + 1) % 2

end

if current_player.lives == 0
    puts "#{second_player.name} wins with #{second_player.lives}/3 lives"
elsif second_player.lives == 0
    puts "#{current_player.name} wins with #{current_player.lives}/3 lives"
end