require_relative 'board.rb'
require_relative 'card.rb'

class Game
    def initialize(n=4)
        @board = Board.new(n)
        # @board.populate
        # @previously_guessed_pos = []
    end

    def play
        # until @board.won?
            @board.render
            puts 'please enter valid position for your guess'
            guess_pos = gets.chomp.split(' ').map .to_i
        # end
    end

    # def make_guess(guess_pos)
    # end


end
