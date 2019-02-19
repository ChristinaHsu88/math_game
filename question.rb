

class Question
    attr_accessor :number1, :number2, :question, :answer
    
    def initialize
    end
    def generate_question
        @number1 = Random.new.rand(0...10)
        @number2 = Random.new.rand(0...10)
        @answer = @number1 + @number2
        puts "what does #{number1} plus #{number2} equals?"
    end  
    def check_answer?(userAnswer)
        if(userAnswer == @answer)
            true
        else
            false
        end
    end 
end

