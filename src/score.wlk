import wollok.game.*
import nivel.*

object puntos {
	var property puntos = 0
	var property position = game.at(2,11)
	
	method modificar(cant) {
		puntos = puntos + cant
	}
}