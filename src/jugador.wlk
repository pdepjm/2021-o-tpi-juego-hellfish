object jugador {

    var posicion = game.at(0,0) // Fijarse
    var arma = null             //
    var vidas = vida
	
	method image() {
		return "pepita_" + color.nogmbre() + ".png"
	} 
	
	method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 

    method moverPara(direccion) {
		posicion = direccion.proximaPosicion(posicion) 
	}

    method obtenerVidas() = vidas

}
