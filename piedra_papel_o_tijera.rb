puts "Turno jugador uno:\n1. Piedra\n2. Papel\n3. Tijeras\n4. Salir"
jugador = gets.chomp.to_i
jugador1 = 0
computador = Random.rand(0..2)

def elegir(jugador)
    while jugador != 1 && jugador != 2 && jugador != 3
        if jugador == 4
            exit
        end
        puts 'Argumento inválido: El argumento debe ser 1.piedra, 2.papel o 3.tijera.'
        jugador = gets.chomp.to_i
    end
    return jugador
end


def jugar(jugador1,jugador2)
    ganador = ""
    if jugador1 == jugador2
        ganador = "Empate"
    elsif jugador1 == 1 && jugador2 == 2
        ganador = "Gana jugador 2"
    elsif jugador1 == 1 
        ganador = "Gana jugador 1"
    elsif jugador1 == 2 && jugador2 == 1
        ganador = "Gana jugador 1"
    elsif jugador1 == 2 
        ganador = "Gana jugador 2"
    elsif jugador1 == 3 && jugador2 == 1
        ganador = "Gana jugador 2"
    elsif jugador1 == 3 
        ganador = "Gana jugador 1"
    end
return ganador
end


if jugador != 4
    jugador1 = elegir(jugador)
    puts "Turno jugador dos:\n1. Piedra\n2. Papel\n3. Tijeras\n4. Salir"
    jugador2 = gets.chomp.to_i
    if jugador2 != 4
        jugador2 = elegir(jugador2)
        puts jugar(jugador1,jugador2)
    end
end
