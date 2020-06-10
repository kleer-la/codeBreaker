require './lib/code_breaker'

describe CodeBreaker do
    it "intento con 10 y gano" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar 10
        result = codeBreaker.status
        #assert
        expect(result).to eq "Ganaste!"
    end

    it "intento con 23 y pierdo" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar 23
        result = codeBreaker.status
        #assert
        expect(result).to eq "23 - nada coincide"
    end

    it "intento con 20 y hay un número correcto" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar 20
        result = codeBreaker.status
        #assert
        expect(result).to eq "20 - 1 correcto"
    end
end