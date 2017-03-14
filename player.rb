module TwO_O_Math

  class Player

    attr_reader :lives

    def initialize(number)
      @number =  number
      @lives = 3
    end

    def drain_life?(good_answer)
      if good_answer
        false
      else
        puts 'ouch!'
        @lives -= 1
      end
    end

  end
end
