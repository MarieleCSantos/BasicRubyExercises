puts 'Bem-vindo ao cookbook, sua rede social de receitas'

receitas = []

puts '[1] Cadastrar uma receita'
puts '[2] Ver todas as receitas'
puts '[3] Sair'

print 'Escolha uma opção: '
opcao = gets.to_i()


while(opcao != 3) do
    
    if (opcao == 1) 
        puts 'Digite o nome da receita: '
        nome = gets.chomp()
        puts 'Digite o tipo da receita: '
        tipo = gets.chomp()

        receitas << {nome: nome, tipo: tipo}
        
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts

    elsif (opcao == 2)
        puts  '======== Receitas cadastradas ========'
        #puts receitas dessa forma ele imprime o hash {:nome=>"bolo", :tipo=>"doce"}, fica feio, para melhorar vamos usar um each
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
    else
        puts 'opção inválida'
    end
    puts
    puts '[1] Cadastrar uma receita'
    puts '[2] Ver todas as receitas'
    puts '[3] Sair'

    print 'Escolha uma opção: '
    opcao = gets.to_i()
end