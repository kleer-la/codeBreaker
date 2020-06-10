require './lib/code_breaker'

describe CodeBreaker do
    it "intento con 10 y gano" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        result = codeBreaker.validar 10
        #assert
        expect(result).to eq "Ganaste!"
    end
end