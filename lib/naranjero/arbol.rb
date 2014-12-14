class Arbol
    attr_reader :edad, :altura, :contador
    
    def initialize()
        @edad = 0
        @altura = 0
        @contador = 0
    end
    
    def uno_mas
        @edad += 1
        @altura += 0.5
        @contador = produccion()
    end
    
    def produccion
        if (@edad > 4)
            @contador += rand(edad)
        end
    end

end
