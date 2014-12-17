require_relative "arbol"

hilo = Thread.new do
    naranjero = Arbol.new
    30.times do
        naranjero.uno_mas
        puts "edad: " + naranjero.edad.to_s
        while (naranjero.contador > 0)
            puts naranjero.recolectar_una
        end
        puts
    end
end

hilo.join
#print hilo.resume