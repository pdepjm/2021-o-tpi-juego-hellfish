object izquierda {
	method proximaPosicion(posicionActual) = posicionActual.left(1) 
	method nombre () = "left"
}

object derecha {
	method proximaPosicion(posicionActual) = posicionActual.right(1) 
	method nombre () = "right"
}

object arriba {
	method proximaPosicion(posicionActual) = posicionActual.up(1) 
	method nombre () = "up"
	
	method desplazar(posicionActual, desplazamietno) = posicionActual.up(desplazamietno)
}

object abajo {
	method proximaPosicion(posicionActual) = posicionActual.down(1) 
	method nombre () = "down"
	
	method desplazar(posicionActual, desplazamietno) = posicionActual.down(desplazamietno)
    
}
    
    //method desplazarAsiAbajo() {
    	//position = position.down(velocidad)
    //}
