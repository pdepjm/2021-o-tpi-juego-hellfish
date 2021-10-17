import wollok.game.*
import direcciones.*
import score.*

class ObjetoMovil {
	const velocidad = 1
	var property position = game.at(3, 15)
	var property desplazamiento = arriba  
	
 
    method impactadoPor(){
    	game.removeVisual(self)
    }
    
   	method impactadoPorArma(arma) {	
    	game.removeVisual(self)
    	puntos.modificar(1000)
    	
    	arma.impacto()
    }
    
    method danio() = 0
     
    method addObjetoMovil() {
    	game.onTick(350, "desplazar", { => position = desplazamiento.desplazar(position, velocidad)})
    	game.addVisual(self)
    }
}
