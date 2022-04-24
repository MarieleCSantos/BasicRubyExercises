class Professor
    attr_reader :ferias
    attr_accessor :nome, :codigo_de_funcionario, :disciplina
    
    def initialize(nome, codigo_de_funcionario, disciplina)
        @nome = nome
        @codigo_de_funcionario = codigo_de_funcionario
        @disciplina = disciplina
        @ferias = false
    end

    def inicia_ferias
        @ferias = true
        @data_inicio_ferias = Time.now
    end

    def encerra_ferias
        @ferias = false
        @data_fim_ferias = Time.now
    end

    #para alterar o estado do 

end
