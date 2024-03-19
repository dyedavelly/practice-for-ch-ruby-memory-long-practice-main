require 'byebug'

class Board
    def initialize(n=4)
        @cards = Array.new(n){Array.new(n)}
        @size = n*n
    end
    def populate
        random_chars = []
        until random_chars.length == @size / 2
            char = ('a'..'z').to_a.sample
            if !random_chars.include?(char) 
                random_chars << char
            end
        end
        random_pairs = (random_chars + random_chars).shuffle!

        @cards.each do |subarray|
            subarray.each_with_index do |spot, i|
                #debugger
                subarray[i] = 
            end
        end
        @cards   
    end
end