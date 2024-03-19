require 'byebug'
class Board
    def initialize(n=4)
        @cards = Array.new(n){Array.new(n)}
        @size = n*n
    end
    def populate
        random_card_pairs = ('a'..'z').to_a.sample
        # random array of 16cards
        #card pairs will be random

        @cards.each do |subarray|
            subarray.each_with_index do |spot, i|
                #debugger
                subarray[i] = 
            end
        end
        @cards   
    end
end