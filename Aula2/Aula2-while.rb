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
    alunos.each do |aluno|
        puts "#{aluno[:nome]} - #{aluno[:nota]} - #{aluno[:disciplina]}"
    end
    
    puts
    puts 'Deseja inserir um novo aluno? s ou n'
    tecla_pressionada = gets.chomp
end

