require_relative 'cliente'

class Conta
    attr_reader :numero, :titular
    attr_accessor :saldo
    
    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
        @tipo = 'corrente'
    end

    # def numero
    #     @numero
    # end

    # def titular
    #     @titular
    # end

    # def titular=(outro_titular)
    #     @titular =  outro_titular
    # end

    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
        else
            puts 'Não foi possível executar o saque'
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor)
        sacar (valor)   #se refere à primeira conta, é como se tivesse self.
        conta_destino.depositar(valor)  #neste caso no lugar do self. passamos o nome do objeto para onde vai      
    end


end