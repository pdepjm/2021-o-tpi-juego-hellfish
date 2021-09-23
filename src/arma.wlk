object lanza {
  var posicion = game.at(0,0) 
  
  	method image() {
		return "lanza.png"
	} 
    
    method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 

    method moverPara(direccion) {
		posicion = direccion.proximaPosicion(posicion) 
	}

    
}