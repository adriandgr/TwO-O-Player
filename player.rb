module TwO_O_Math

  class Player

    attr_reader :lives

    def initialize(number)
      @number =  number
      @lives = 3
    end

    def drain_life
      @lives -= 1
    end

  end
end
