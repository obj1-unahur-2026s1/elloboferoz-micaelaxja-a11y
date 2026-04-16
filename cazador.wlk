import caperucita.*
import abuelita.*
import feroz.*

object cazador {
    var colorCabello = "Negro"
    var  peso = 100
    var elemento = machete //puede variar
    var fuerza = 80


    method elementoActual(unElemento){
        elemento = unElemento

    }
    method pesoActual(nuevoPeso){
        peso = nuevoPeso
    }

    method fuerzaActual(nuevoValor){
        fuerza = nuevoValor
        return fuerza
    }



    method tieneMiedo(nuevoValor){
        return (feroz.estaSaludable() && feroz.pesoActual()) > self.fuerzaActual(nuevoValor)
    }
    
    method correr(){
        peso = peso - 1 
        fuerza = fuerza -1
    }
    

    method provocarCrisis(){
        feroz.sufrirCrisis()         

    }

    method atacar(){
        if(peso > feroz.pesoActual()){
            feroz.sufrirCrisis()
        } else {
            self.correr()
        }
    }
    method cambiarColorPelo(unColor){
            colorCabello = unColor
    }

    method distraerAlLobo(unColor){
        if(feroz.estaDisfrazadoDeAbuela()){
            self.cambiarColorPelo(unColor)
        }

    }
    method tieneArma() {
        return true
    }

    method esValiente() {
        return true
    
    }
    method esDistraido(){
        return false
    }

}


// OBJETOS

object machete{
    const peso = 15
    //const material = "acero"

    const dureza = 8
    const resistencia = 100


    method bonusFuerza(fuerza) = resistencia - dureza + peso
}

    



object rifle{
    const peso = 20
    const precision = 10
    method bonusFuerza(fuerza) = precision * peso
}