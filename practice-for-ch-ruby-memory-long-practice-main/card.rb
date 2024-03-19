class Card
    attr_reader :face_up, :face_value

    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    def reveal
        return @face_value
    end

    def hide
        @face_up = false if @face_up
    end
    
    def ==(card2)
       if self.face_value == card2.face_value
          puts "It's a match"
          true
       else
          puts "Try again"
          false
       end
    end
    
end
