import wollok.game.*
import nivel.*

object puntos {
	var property cantidad = 0
	var posicion = game.at(2,11)
	
  	method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 
	
	method puntos() = cantidad
	
	method modificar(cant) {
		cantidad = cantidad + cant
		
		if(cantidad==3000){
			nivel.ganaste()
		}
	}

}