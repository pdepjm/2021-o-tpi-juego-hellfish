import wollok.game.*
import jugador.*

object lanza {
  	var posicion = game.at(-1,0) 
  	var movimiento = false 
  	
	  
  	method image() = "lanza.png"
 
	
    method position() { 
    	if (movimiento) {
    	   posicion = posicion.up(1)
    	}
    	return posicion
    	
    }
    
	



	method disparar(personaje) {
		movimiento = true
		posicion = personaje.position()
		posicion = posicion.down(13)
	} 
	
	
    
}