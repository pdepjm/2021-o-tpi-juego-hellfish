import wollok.game.*
import jugador.*

object lanza {
  	var posicion = game.at(0,0) 
	  
  	method image() {
		return "lanza.png"
	} 
    
    method position() { 
    	//posicion = jugador.position().down(13)
    	posicion = posicion.down(1)
    	
    	// self.position().y()
    	
    	return posicion
    }
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 

    method moverPara(direccion) {
		posicion = direccion.proximaPosicion(posicion) 
	}

	method disparar(personaje) {
		posicion = personaje.position()
	} 
    
}