/Objeto receita /
class Receita
    attr_reader :descricao, :preparo, :tipo 
    attr_writer :descricao, :preparo

        def initialize()

            @descricao
            @preparo
            @tipo

        end
        /Método para definir o tipo do prato em string, poderia ser um array também/
        def tipo_prato(tipo)
            if tipo == 1
                @tipo = "Entrada"    
            elsif tipo == 2 
                @tipo = "Prato principal"
            elsif tipo == 3
                @tipo = "Sobremesa"
            end
            
        end
end
