class CodeBreaker

    def initialize secreto
        @secreto=secreto
        @status= "Perdiste!"
    end

    def validar numero
        if @secreto==numero
            @status= "Ganaste!"
        else
            @status = "#{numero} - nada coincide"
        end
    end

    def status 
        @status
    end
end