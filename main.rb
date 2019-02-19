require './question'
require './player'
# setting the name
puts "Player A's name: "
playerA = gets.chomp
puts "Player B's name: "
playerB = gets.chomp

current_player = Player.new(playerA)
second_player = Player.new(playerB)

puts "new #{current_player}"

puts current_player.lives

while current_player.lives > 0 || second_player.lives > 0 
    q = Question.new()
    puts "question for #{current_player}"

    q.generate_question
    userAnswer = gets.chomp
    @result = q.check_answer?(userAnswer.to_i)

    if @result
        puts "Yes! You are correct"
    else 
        puts "Seriously? No"
    end
end


if current_player=="player1"
    current_player = "player2"
else    
    current_player = "player1"
end

puts "question for #{current_player}"
q.generate_question
userAnswer = gets.chomp
@result = q.check_answer?(userAnswer.to_i)
if @result
    puts "you answered correctly"
else 
    puts "Your answer is not right"
end