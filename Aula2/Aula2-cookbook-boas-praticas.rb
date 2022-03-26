INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo()
	puts 'Bem-vindo ao cookbook, sua rede social de receitas'
end

def menu()
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
	puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
	puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
	puts "[#{SAIR}] Sair" 
	print 'Escolha uma opção: '
	return gets.to_i()
end

def inserir_receita()
	puts 'Digite o nome da receita: '
	nome = gets.chomp()
	puts 'Digite o tipo da receita: '
	tipo = gets.chomp()

	puts
	puts "Receita #{nome} cadastrada com sucesso!"
	puts
	return {nome: nome, tipo: tipo}
end

def imprimir_receitas(r)
	puts  '======== Receitas cadastradas ========'
	r.each do |receita|
			puts "#{receita[:nome]} - #{receita[:tipo]}"
	end
	puts
	if r.empty?
			puts 'Nenhuma receita cadastrada'
	end
end

bem_vindo()

opcao = menu()

receitas = []

# while(opcao != SAIR) do
	
#     if (opcao == INSERIR_RECEITA) 
#         receitas << inserir_receita()
#     elsif (opcao == VISUALIZAR_RECEITAS)
#         imprimir_receitas(receitas)        
#     else
#         puts 'opção inválida'
#     end
#     puts
	
#     opcao = menu()
# end

loop do
	if (opcao == INSERIR_RECEITA) 
			receitas << inserir_receita()
	elsif (opcao == VISUALIZAR_RECEITAS)
			imprimir_receitas(receitas)        
	elsif (opcao == SAIR)
			break
	else
			puts 'opção inválida'
	end
	puts
	
	opcao = menu()
end

puts
puts 'Obrigada por usar o cookbook, até logo!'