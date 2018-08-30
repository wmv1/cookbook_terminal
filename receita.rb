class Receita
    attr_reader :descricao, :preparo, :tipo 
    attr_writer :descricao, :preparo

        def initialize()

            @descricao
            @preparo
            @tipo

        end

        def tipo_prato(tipo)
            if tipo == 1
                @tipo = "Entrada"    
            elsif tipo == 2 
                @tipo = "Prato principal"
            elsif tipo == 3
                @tipo = "Sobremesa"
            end
            
        end
        
        def retorna_tipo
            if  @tipo == "Entrada"
                return 1
            elsif @tipo == "Prato principal"
                return 2
            elsif @tipo == "Sobremesa"
                return 3
            end
        end    
            
        end
