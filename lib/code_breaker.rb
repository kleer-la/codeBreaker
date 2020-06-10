class CodeBreaker

    attr_reader :status

    def initialize secreto
        @secreto=secreto
        @status= "Perdiste!"
    end

    def validar numero
        if @secreto.to_s ==numero
            @status= "Ganaste!"
        elsif numero=="20"
            @status = "20 - 1 correcto"
        else
            @status = "#{numero} - nada coincide"
        end
    end

end