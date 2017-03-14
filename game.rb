require_relative 'player'
require_relative 'math_problem'
require_relative 'sassy_game_host'
require_relative 'game_brand'



module TwO_O_Math

  class Game

    def initialize
      @players = []
      @question
      @question_num = 0
      @input = 0
      @host = nil
      2.times do |number|
        @players.push(Player.new(number))
      end
      @current_player = 0
    end

    def game_over?
      state = @players.any? { |player| player.lives <= 0 }
      if state
        if @players[0].lives > @players[1].lives
          puts "Player 1 Won with a score of #{@players[0].lives}/3"
        else
          puts "Player 2 Won with a score of #{@players[1].lives}/3"
        end
        puts "\n ════════════  GAME OVER  ════════════"
      end
      state
    end

    def start
      GameBrand.new
      loop do
        @question = MathProblem.new

        print "Player #{@current_player + 1}: "
        puts @question.display
        print '>> '
        @input = gets.chomp
        reply = @question.good_solution?(@input)
        @players[@current_player].drain_life?(reply)
        #binding.pry
        print "Player #{@current_player + 1}: "
        @host = SassyGameHost.new(reply)
        unless reply
          puts "\nP1 #{@players[0].lives}/3  |  P2 #{@players[1].lives}/3\n\n"
        end
        @current_player += 1
        if @current_player == @players.length
          @current_player = 0
        end

        break if game_over?
        puts "\n ════════════  NEW TURN  ════════════"
      end


    end

  end
end

if $0 == __FILE__
  TwO_O_Math::Game.new.start
end