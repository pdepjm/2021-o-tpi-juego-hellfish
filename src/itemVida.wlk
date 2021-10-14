import wollok.game.*
import jugador.*
import ObjetoMovil.*

class ItemVida inherits ObjetoMovil {
	const incrementoVida = 1
	
	method image() = "vida.png" 
	    
     //override method danio() {
     	//jugador.incrementarVida()
     	//game.removeVisual(self)
     	
    	//return 0
     //}
     
     method efecto() {
     	jugador.modificarVida(incrementoVida)
     	game.removeVisual(self)
     }  
}
