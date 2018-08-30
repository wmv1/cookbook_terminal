class Receitas
    attr_reader :lista_de_receitas
    attr_writer :lista_de_receitas

    def initialize
        @lista_de_receitas = []  
    end
    
    def add_receita(receita)
        @lista_de_receitas << receita    
    end

    def listar_todas
        @lista_de_receitas.each_with_index do |receita, index|
                puts index + 1
                puts receita.descricao
                puts receita.preparo
                puts receita.tipo
        end
        
    end

    def buscar_por_tipo(tipo)
        @lista_de_receitas.each_with_index do |receita, index|
            if receita.retorna_tipo == tipo
                puts index + 1
                puts receita.descricao
                puts receita.preparo
                puts receita.tipo
            end
        end
    end

    def busca_por_palavra(palavra)
        @lista_de_receitas.each_with_index do |receita, index|
           
            if receita.descricao.include?(palavra)
                puts index + 1
                puts receita.descricao
                puts receita.preparo
                puts receita.tipo
            end
        end
        
    end

    def remove_receita(posicao)
        @lista_de_receitas.delete_at(posicao - 1)
         
    end

end

a = Receita.new
a.descricao = "Pudm de leite"
a.preparo = "preparo1"
a.tipo_prato(1)

b = Receita.new
b.descricao = "Arroz"
b.preparo = "preparo1"
b.tipo_prato(2)


c = Receitas.new
c.add_receita(a)
c.add_receita(b)
