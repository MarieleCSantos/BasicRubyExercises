require_relative 'conta'

class ContaCorrente < Conta
    attr_accessor :limite
    
    def initialize(numero, titular, saldo, limite)
        # @numero = numero
        # @titular = titular
        # @saldo = saldo
        super(numero, titular, saldo) # o super serve para rodar o initialize da classe Conta
        @limite = limite
    end

    def sacar(valor)
        if (saldo + limite) >= valor
            self.saldo -= valor
        else
            puts 'Não foi possível executar o saque'
        end
    end   
end