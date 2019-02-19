class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
  end
end

# playerA = Player.new('player3')
# puts playerA
# playerA.wrong_answer
# puts playerA.lives
# puts playerA.name
# playerA.wrong_answer
# puts playerA