import wollok.game.*
import jugador.*

object lanza {
  	var posicion = game.at(0,0) 
	  
  	method image() {
		return "lanza.png"
	} 
    
    method position() { 
    	posicion = jugador.position().down(13)
    	return posicion
    }
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 

    method moverPara(direccion) {
		posicion = direccion.proximaPosicion(posicion) 
	}

    
}