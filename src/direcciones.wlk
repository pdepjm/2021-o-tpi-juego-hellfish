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
}

object abajo {
	method proximaPosicion(posicionActual) = posicionActual.down(1) 
	method nombre () = "down"
}

