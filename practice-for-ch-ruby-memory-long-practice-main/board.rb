require 'byebug'
require_relative 'card.rb'
class Board
    def initialize(n=4)
        @n = n
        @cards = Array.new(n){Array.new(n)}
        @size = n*n
    end
    
    def populate
        random_chars = []
        until random_chars.length == @size / 2
            char = ('A'..'Z').to_a.sample
            if !random_chars.include?(char) 
                random_chars << char
            end
        end
        random_pairs = (random_chars + random_chars).shuffle!

        @cards.each do |subarray|
            subarray.each_with_index do |ele, i|
                subarray[i] = Card.new(random_pairs.pop)
            end
        end
        @cards   
    end
     
    def render
        print "  "
        @n.times { |ele| print ele.to_s + " " }
        puts 
        @cards.each_with_index do |subarray, row|
            print row
            print " "
            puts subarray.join(" ")
        end
    end

    def cards
        @cards
    end

    def reveal(pos)
        row, col = pos
        if !@cards[row][col].face_up
            return @cards[row][col].face_value
        end
    end

    def won?
        @cards.each do |card|
            if card.all? { |ele| ele.face_up == true }
                return true
            end
        end
        false
    end
end