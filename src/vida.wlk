import wollok.game.*

object vida {
	var property cantidad = 3
	var posicion = game.at(7,7)
	
  	method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 
	
	method image() = "vida.png"
	
}