import wollok.game.*
import jugador.*

object lanza { 
  	var property position = game.at(-5,0)
  	var movimiento = false
  	const velocidad = 1 
  		  
  	method image() = "lanza.png"
 	
	method disparar(personaje) {
		movimiento = true
		position = personaje.position()
		position = position.down(13)
	}

    method desplazar() {
    	if (movimiento) {
    		position = position.up(velocidad)
    	}
    	else{
    		position = game.at(-5,0) 
    	}
    }
    
    method addArma() {
    	game.onTick(300, "desplazar", { => self.desplazar()})
    	game.addVisual(self)
    }
    
    method danio() = 0
    
    method impactar(unObjeto) {
    	if(unObjeto.equals(jugador).negate()){
     		unObjeto.impacto()
     		self.impacto()	
     	}
     } 
     
	method impacto() {
     	position = game.at(-5,0)
     	movimiento = false
     }
}