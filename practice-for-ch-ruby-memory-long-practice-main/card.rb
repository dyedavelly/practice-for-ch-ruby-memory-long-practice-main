class Card
    attr_reader :face_up, :face_value

    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    # def reveal
    #     @face_up = true
    #     # return @face_value
    # end

    def to_s
        if @face_up == true
            @face_value
        else 
            return ' '
        end
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
