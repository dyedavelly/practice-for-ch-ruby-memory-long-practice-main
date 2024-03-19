require 'byebug'

class Board
    def initialize(n=4)
        @n = n
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
            subarray.each_with_index do |ele, i|
                subarray[i] = random_pairs.pop
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
            p subarray.join(" ")
        end
    end
end