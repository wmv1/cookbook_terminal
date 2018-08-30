
def menu_principal()
    puts "Bem‑vindo ao My Cookbook, sua rede social de receitas culinárias!"
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Buscar receitas"
    puts "[4] Remover receita"
    puts "[5] Sair"
    puts
    print "Escolha uma opção:"
        return gets.to_i
end

def menu_tipo_receita()

end


tarefas = []
opcao =  menu_principal
while opcao != 3 do
if opcao == 1
print 'Digite sua tarefa: '
tarefa = gets
puts
puts 'Tarefa cadastrada: ' + tarefa
tarefas << tarefa
puts
elsif opcao == 2
puts
Métodos
puts 'Tarefas encontradas: '
puts tarefas
puts
else
puts
puts 'Opção inválida'
puts
end
opcao =  menu_principal
end

