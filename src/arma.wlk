import wollok.game.*
import jugador.*

object lanza {
  	//var posicion = game.at(-1,0) 
  	var property position = game.at(-1,0)
  	var movimiento = false
  	const velocidad = 1 
  		  
  	method image() = "lanza.png"
 	
 	/*
    method position() { 
    	if (movimiento) {
    	   posicion = posicion.up(1)
    	}
    	return posicion    	
    }
    */
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
    	game.onTick(500, "desplazar", { => self.desplazar()})
    	game.addVisual(self)
    }
    
    method danio() {
    	return 0
     } 
}