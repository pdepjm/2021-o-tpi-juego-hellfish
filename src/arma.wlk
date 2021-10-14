import wollok.game.*
import jugador.*
import score.*
import ObjetoMovil.*


// hacer desaparecer el objeto
object lanza {
  	// Dos wko para los estados
  	var movimiento = false
  	var property position = game.at(-3,0)
  	const velocidad = 1
  		  
  	method image() = "lanza.png"
 	
	method disparar(personaje) {
		movimiento = true
		position = personaje.position()
		position = position.down(2)
	}

	 
    method desplazar() {
    	if (movimiento) {
    		position = position.up(velocidad)
    	}
    	else{
    		position = game.at(-3,0) 
    	}
    }

    method addArma() {
    	game.onTick(300, "desplazar", { => self.desplazar()})
    	game.addVisual(self)
    }
    
    method impactar(unObjeto) {
    	// sacar el if
    	if(unObjeto.equals(jugador).negate()){
     		//unObjeto.impacto()
     		//unObjeto.efecto()
     		unObjeto.impactadoPor(self)
     		self.impacto()	
     		puntos.modificar(1000)
     	}
     } 
     
	method impacto() {
     	position = game.at(-3,0)
     	movimiento = false
     }
     
     method danio() = 0
     
     method efecto() {}
     
}