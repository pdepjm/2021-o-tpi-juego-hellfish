import wollok.game.*
import ObjetoMovil.*
import jugador.*
import score.*
import enemigo.*

class Bonus inherits ObjetoMovil {
	
	method image() = "estrella.png"
    
    override method puntosObtenidos() = -100

    method efecto() {
     	game.removeVisual(self)
     	puntos.modificar(500)
     }    
}