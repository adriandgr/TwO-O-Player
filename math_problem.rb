module TwO_O_Math

  class MathProblem


    attr_reader :display

    def initialize
      @operand_one = rand(19) + 1
      @operand_two = rand(19) + 1
      @display = ''
      @solution = nil
      generate_problem(rand(4))
    end

    def generate_problem(rand)
      case rand
      when 0
        @display = "What does #{@operand_one} plus #{@operand_two} equal?"
        @solution = @operand_one + @operand_two
      when 1
        @display = "What does #{@operand_one} minus #{@operand_two} equal?"
        @solution = @operand_one - @operand_two
      when 2
        @display = "What does #{@operand_one} divided by #{@operand_two} equal? (nearest int)"
        @solution = (@operand_one.to_f / @operand_two.to_f).round
      when 3
        @display = "What does #{@operand_one} times #{@operand_two} equal?"
        @solution = @operand_one * @operand_two
      when 4
        @display = "What does #{@operand_one} modulo #{@operand_two} equal?"
        @solution = @operand_one % @operand_two
      end
    end

    def good_solution?(answer)
      answer.to_f == @solution
    end

  end
end
