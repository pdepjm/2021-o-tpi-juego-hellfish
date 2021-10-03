import wollok.game.*
import nivel.*

object vida {
	var property cantidad = 3
	var posicion = game.at(8,11)
	
  	method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 
	
	method image() = "vida.png"
	
	method vidas() = cantidad
	
	method modificar(cant) {
		cantidad = cantidad + cant
		if(cantidad==0){
			nivel.gameOver()
		}
	} 	
}