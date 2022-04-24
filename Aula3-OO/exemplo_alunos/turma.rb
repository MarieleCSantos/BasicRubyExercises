class Turma
    attr_accessor :alunos, :nome, :numero_da_sala, :professor_responsavel
    
    def initialize(nome, numero_da_sala, professor_responsavel)
        @alunos = []
        @nome = nome
        @numero_da_sala = numero_da_sala
        @professor_responsavel = professor_responsavel
    end


    def adiciona_aluno(aluno)
        alunos << aluno
    end

    def total_alunos(alunos)
        puts alunos.length.to_i
    end
    

end
