object jugador {
	var posicion = game.at(2,2) // Fijarse
	
	method image() {
		return "pepita_" + color.nombre() + ".png"
	} 
	
	method position() {
		return posicion
	} 
}
