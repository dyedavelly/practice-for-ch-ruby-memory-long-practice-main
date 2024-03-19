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



end
