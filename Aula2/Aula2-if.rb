alunos = [{ nome: 'Alberto', nota: 7, disciplina: 'Artes' }, 
    { nome: 'Maria', nota: 8, disciplina: 'Matemática' }, { nome: 'Julia', nota: 4, disciplina: 'Filosofia' }]

if alunos [0][:nota] > 5
    puts "#{alunos[0][:nome]} foi aprovado em #{alunos[0][:disciplina]}"   
else
    puts "#{alunos[0][:nome]} foi reprovado em #{alunos[0][:disciplina]}"
end

if alunos [1][:nota] > 5
    puts "#{alunos[1][:nome]} foi aprovado em #{alunos[1][:disciplina]}"   
else
    puts "#{alunos[1][:nome]} foi reprovado em #{alunos[1][:disciplina]}"
end

if alunos [2][:nota] > 5
    puts "#{alunos[2][:nome]} foi aprovado em #{alunos[2][:disciplina]}"   
else
    puts "#{alunos[2][:nome]} foi reprovado em #{alunos[2][:disciplina]}"
end