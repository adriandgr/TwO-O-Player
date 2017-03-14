require 'pry'
module TwO_O_Math

  class SassyGameHost

    def initialize(mode)
      @mode = mode
      if @mode
        congratulate(rand(4))
      else
        mock(rand(4))
      end
    end

    def congratulate(rand)
      case rand
      when 0
        puts 'Way to go Monsieur Fermat!'
      when 1
        puts 'Quod Erat Demonstrandum!'
      when 2
        puts 'You\'re such a math wiz!'
      when 3
        puts 'You\'re killing it!'
      when 4
        puts 'You\'ve got a beautiful mind!'
      end
    end

    def mock(rand)
      case rand
      when 0
        puts 'Did you just try dividing by zero?'
      when 1
        puts 'Would you like to borrow my abacus?'
      when 2
        puts "You're breaking my heart... \n  and loosing yours in the process"
      when 3
        puts 'Nope. That\'s all I have to say..'
      when 4
        puts 'Siri can\'t help you here'
      end
    end

  end
end