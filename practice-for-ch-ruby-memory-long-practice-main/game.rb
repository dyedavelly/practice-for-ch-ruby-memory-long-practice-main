require_relative 'board.rb'
require_relative 'card.rb'

class Game
    def initialize(n=4)
        @board = Board.new(n)
        @previously_guessed_pos = []
    end

    def play
        # until @board.won?
            @board.render
            puts 'please enter valid position for your guess'
            guessed_pos = gets.chomp.split(" ").map { |ele| ele.to_i}
        # end
    end

    def make_guess(guessed_pos)
        guessed_face = @board.reveal(guessed_pos)
        

    end


end
