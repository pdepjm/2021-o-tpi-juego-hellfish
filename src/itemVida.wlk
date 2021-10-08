import wollok.game.*
import jugador.*
import Objeto.*

class ItemVida inherits Objeto {
	
	method image() {
		return "vida.png"
	} 
	    
     override method danio() {
     	jugador.incrementarVida()
     	game.removeVisual(self)
     	
    	return 0
     }  
}
