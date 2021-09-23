object Vida {
	var cantidad
	var posicion = game.at(0,0)
	
  	method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 
	
	
	method image() {
		return "vida.png"
	} 
}