object caperucita {
    const pesoCaperucita = 60
    var cantidadManzanas = 6
    const pesoManzanas = 0.2 

    var pesoActual = pesoCaperucita + (cantidadManzanas * pesoManzanas)
    
    method pesoActual(){
         pesoActual= pesoCaperucita + (cantidadManzanas * pesoManzanas)
        return pesoActual
    }

    method perderManzana(){
        cantidadManzanas = cantidadManzanas - 1
        return cantidadManzanas
    }
}


