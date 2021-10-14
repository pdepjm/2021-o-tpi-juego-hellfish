import wollok.game.*
import ObjetoMovil.*
import jugador.*

class Enemigo inherits ObjetoMovil {
	
	method image() = "enemigo_bola1.png"
    
    override method danio() = -1
    
    method efecto() {
    	game.removeVisual(self)
    	jugador.modificarVida(self.danio())
    }
}

