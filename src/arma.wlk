import wollok.game.*
import jugador.*

class lanza {
  	var posicion = game.at(0,0) 
	  
  	method image() {
		return "lanza.png"
	} 
    
    
    method position() { 
    	posicion = posicion.down(1)
    	return posicion
    }
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 


	method disparar(personaje) {
		posicion = personaje.position()
	} 
    
}