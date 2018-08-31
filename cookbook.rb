require_relative "receita.rb"
require_relative "receitas.rb"

def menu_principal()
    puts "Bem‑vindo ao My Cookbook, sua rede social de receitas culinárias!"
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Buscar receitas"
    puts "[4] Buscar por palavra"
    puts "[5] Remover receita"
    puts "[6] Sair"
    puts
    print "Escolha uma opção:"
    
        return gets.to_i
end

def menu_tipo_receita(cadastrando)
    if cadastrando == false
       puts"[0] Todos os tipos"
       puts"[1] Entrada"
       puts"[2] Prato principal"
       puts"[3] Sobremesa"
       print "Escolha uma opção:"
       return gets.to_i

    else
        puts"[1] Entrada"
        puts"[2] Prato principal"
        puts"[3] Sobremesa"
        print "Escolha uma opção:"
        return gets.to_i
    end
end

def converte_tipo_prato(n)
    
    if n == 0
        return "Todos"
    elsif n == 1
        return "Entrada"    
    elsif n == 2 
        return "Prato principal"
    elsif n == 3
        return "Sobremesa"
    end
    
end


    tarefas = []
    opcao =  menu_principal
   receitas = Receitas.new

    while opcao != 6 do
            if opcao == 1
                receita = Receita.new
                
                print "Digite o nome da sua receita: "
                receita.descricao = gets
                puts
                print "Digite o modo de preparo: "
                receita.preparo = gets
                puts
               # print "Digite o tipo da receita: "
                receita.tipo_prato(menu_tipo_receita(true))
               if receitas.add_receita(receita)
                print "Receita #{receita.descricao.chomp} cadastrada!"
                sleep(1)
            
            end
                receita = nil
                system ("clear")
            elsif opcao == 2
                
                if receitas.vazia
                puts "Não há receitas cadastradas"
                puts
                else
                    receitas.listar_todas
                end
               
            elsif opcao == 3
                if receitas.vazia
                    puts "Cadastre ao menos uma receita"
                    puts
                else
                tipo = menu_tipo_receita(false)
                receitas.buscar_por_tipo(converte_tipo_prato(tipo))
                end
                
            elsif opcao == 4
                
                if receitas.vazia
                    puts "Cadastre ao menos uma receita"
                    puts
                else
                    print "Digita a palvra desejada: "
                    receitas.busca_por_palavra(gets.chomp)
                end
                
            
        elsif opcao == 5
          
            if receitas.vazia
                puts "Cadastre ao menos uma receita"
                puts
            else
                puts
                receitas.listar_todas
                puts
                print "Digite o número da receita que deseja remover: "
                receitas.remove_receita(gets.to_i)
                
            end
     
     
            
        end
            
        opcao =  menu_principal
        puts


     end


     
puts "Fuiii11"
