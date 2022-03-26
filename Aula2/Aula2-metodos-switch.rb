def imprime_alunos (aluno)
    puts "#{aluno[:nome]} tirou nota #{aluno[:nota]} em #{aluno[:disciplina]}"
end

def verifica_nota (aluno)
    case aluno[:nota]
    when 0
    puts "#{aluno[:nome]} tirou zero! Precisa melhorar…"
    when 1..4
    puts "#{aluno[:nome]} foi reprovado… precisa se esforçar mais..."
    when 5
    puts "#{aluno[:nome]} passou raspando!"
    when 6..9
    puts "Parabéns, #{aluno[:nome]}, você foi aprovado"
    when 10
    puts "#{aluno[:nome]} tirou 10! Você deve ser o melhor aluno que já tive!"
    else
    puts 'Nota inválida'
    end
end

tecla_pressionada = 's'
alunos = []

while tecla_pressionada == 's' do
    puts 'Digite o nome do aluno: '
    nome = gets.chomp
    puts 'Digite a nota do aluno: '
    nota = gets.chomp.to_i
    puts 'Digite a disciplina: '
    disciplina = gets.chomp

    alunos << {nome: nome, nota: nota, disciplina: disciplina}
    
    puts
    puts 'Os dados cadastrados foram: '

    alunos.each do |aluno|
        imprime_alunos (aluno)
        verifica_nota (aluno)
    end

    puts
    puts 'Deseja testar um novo aluno? s ou n'
    tecla_pressionada = gets.chomp
end
