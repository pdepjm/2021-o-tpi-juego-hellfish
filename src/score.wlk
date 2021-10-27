import wollok.game.*
import nivel.*

object puntos {
	var property cantidad = 0
	var property position = game.at(2,11)
	
	method modificar(deltaPuntos) {
		cantidad = cantidad + deltaPuntos
	}
	
	method puntos() = cantidad
}