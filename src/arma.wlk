import wollok.game.*
import jugador.*

class Lanza {
  	var posicion = game.at(0,0) 
  	
	  
  	method image() = "lanza.png"
 
	
    method position() { 
    	posicion = posicion.up(1)
    	return posicion
    }
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 


	method disparar(personaje) {
		posicion = personaje.position()
		posicion = posicion.down(13)
	} 
	
	
    
}