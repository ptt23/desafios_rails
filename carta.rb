
#Se crea la clase Carta
class Card
# Se crean los getter y setters
    attr_accessor :number, :pinta
# Se crea el constructor con la condición para que reciba numeros del 1 al 13 y las pintas indicadas.
    def initialize (number, pinta) 
        if (number >=1 || number <= 13) && ['C','T','D','E'].include?(pinta)
        @number = number
        @pinta = pinta
        end
    end
end



#Se crea el arreglo para obtener 5 cartas con las condiciones dadas.
carta = []
5.times do |i|
    carta = Card.new(rand(1..13),['C','T','D','E'].sample)
    pp carta 
end

