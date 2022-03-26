puts 'Bem-vindo ao cookbook, sua rede social de receitas'

receitas = []

while(1 == 1) do
    puts
    puts 'Digite o nome da receita: '
    nome = gets.chomp()

    receitas << nome
    
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    puts  "======== Receitas cadastradas ========"
    # aqui tem um for em ruby (menos comum)
    # for receita in receitas do 
    #     puts receita
    # end

    #essa é a forma mais comum de fazer for em ruby
    receitas.each do |receita|
        puts receita
    end

end