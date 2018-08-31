/Classe responsável por armazenar uma lista de receitas/
#require 'active_support'
#require 'json'
require_relative 'receita.rb'
require 'rubygems'
require 'active_support/all'


class Receitas < Receita
    attr_reader :lista_de_receitas
    attr_writer :lista_de_receitas

    
    def initialize
        #Array de receitas
        @lista_de_receitas = Array.new  
    end



    def vazia 
        return @lista_de_receitas[0].nil?
    end
    
    def add_receita(receita)
        @lista_de_receitas << receita    
    end
    
    def listar_todas
        @lista_de_receitas.each_with_index do |receita, index|
            puts "Receita ##{index + 1}" 
            puts "Descrição: #{receita.descricao}"
            puts "Preparo: #{receita.preparo}"
            puts "Tipo: #{receita.tipo}"
            puts
        end
        
    end
    #Metódo busca por tipo de receita "Entrada, Prato principa..." recebendo o @tipo através do menu
    def buscar_por_tipo(tipo)
            @lista_de_receitas.each_with_index do |receita, index|
                if receita.tipo == tipo
                    puts "Receita ##{index + 1}" 
                    puts "Descrição: #{receita.descricao}"
                    puts "Preparo: #{receita.preparo}"
                    puts "Tipo: #{receita.tipo}"
                    puts
                elsif tipo == "Todos"
                    puts "Receita ##{index + 1}" 
                    puts "Descrição: #{receita.descricao}"
                    puts "Preparo: #{receita.preparo}"
                    puts "Tipo: #{receita.tipo}"
                    puts
                end
            end
        
    end
    #Busca a receita pela palavra digitada
    def busca_por_palavra(palavra)

        puts "Receitas encontradas"
        @lista_de_receitas.each_with_index do |receita, index|
           #include verifica na posição atual da descrição da receita se existe a palavra, se "true", imprime a receita
            if receita.descricao.downcase.include?(palavra.downcase)
                puts "Receita ##{index + 1}" 
                puts "Descrição: #{receita.descricao}"
                puts "Preparo: #{receita.preparo}"
                puts "Tipo: #{receita.tipo}"
                puts
            end
        end
        
    end
    #Remove a receita da lista
    def remove_receita(posicao)
        #try cath da vida
        begin
            #No menu de remoção é listado todas as receitas, aqui faço a remoção com o 
            #método delete_at, que recebe a posição do menu -1
            if @lista_de_receitas.delete_at(posicao - 1)
            puts "Receita removida"
            else
                puts "Receita não removida"
            end
        rescue
            puts "Algo deu errado"
        end
         
    end

end
