
import abuelita.*
import cazador.*
import caperucita.*


object feroz {
    const pesoInicial = 10
    var peso = pesoInicial
    var estaDisfrazado = false         

    method volverAlPesoInicial(){ 
        return pesoInicial
    }


    method estaSaludable(){  
        return  peso.between(20, 150)
    }

    method comer(algo){
        peso = self.pesoActual() + algo.pesoActual() * 0.1 //polimorfismo--> pesoActual() es un metodo que se encuentra en cada objeto
        return peso
    }
    method pesoActual(){
        return peso
    }
    method aumentoDisminucionDePeso(unidades){
        peso = peso + unidades

    }

    method sufrirCrisis(){ 
        return self.volverAlPesoInicial() 
        
    }

    method correr(){ 
        peso = peso - 1
        
    }
    method estaDisfrazadoDeAbuela(){
            estaDisfrazado = true
            return estaDisfrazado
        

}
        
        
        
    
    method conversar(alguien){

        
        }
    }




