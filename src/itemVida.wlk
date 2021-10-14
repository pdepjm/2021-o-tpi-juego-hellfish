import wollok.game.*
import jugador.*
import ObjetoMovil.*

class ItemVida inherits ObjetoMovil {
	const incrementoVida = 1
	
	method image() = "vida.png" 
	
    method efecto() {
    	jugador.modificarVida(incrementoVida)
     	game.removeVisual(self)
     }  
}
