def imprime_alunos (alunos)
    alunos.each do |aluno|
        puts "#{aluno[:nome]} tirou nota #{aluno[:nota]} em #{aluno[:disciplina]}"
    end
end


tecla_pressionada = 's'
alunos = []

while tecla_pressionada == 's' do
    puts 'Digite o nome do aluno: '
    nome = gets.chomp
    puts 'Digite a nota do aluno: '
    nota = gets.chomp
    puts 'Digite a disciplina: '
    disciplina = gets.chomp

    alunos << {nome: nome, nota: nota, disciplina: disciplina}
    
    puts
    puts 'Os dados cadastrados foram: '

    imprime_alunos (alunos)
    
    puts
    puts 'Deseja inserir um novo aluno? s ou n'
    tecla_pressionada = gets.chomp
end
