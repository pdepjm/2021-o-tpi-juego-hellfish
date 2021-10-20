import wollok.game.*
import nivel.*

object puntos {
	var property cantidad = 0
	var property position = game.at(2,11)
	
	method modificar(cant) {
		cantidad = cantidad + cant
	}
	
	method puntos() = cantidad
}