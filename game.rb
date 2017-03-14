require_relative 'player'

module TwO_O_Math

  class Game

    def initialize
      @players = []
      2.times do |number|
        @players.push(Player.new)
      end
      @current_player = 0
    end

    def game_over?
      @players.any? { |player| player.lives <= 0 }
    end

  end
end

if $0 == __FILE__
  TwO_O_Math::Game.new.start
end