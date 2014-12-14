class Arbol
    attr_reader :edad, :altura, :contador
    
    def initialize()
        @edad = 0
        @altura = 0
        @contador = 0
    end
    
    def uno_mas
        if (@edad >= 25)
            matarArbol()
        else
            @edad += 1
            if (@altura < 3)
                @altura += 0.5
            else
                @altura += rand(0.5)
            end
            @contador = produccion()
        end
    end
    
    def produccion
        if (@edad > 4)
            @contador += rand(3)
        end
    end
    
    def set_edad(edad)
        @edad = edad
        if (@edad >= 25)
            matarArbol()
        else
            @altura = edad*0.5
            @contador = (edad-4)*rand(3)
        end
    end
        
    def matarArbol
        @contador = 0
        @altura = 0
    end

end
