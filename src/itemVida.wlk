import wollok.game.*
import jugador.*
import ObjetoMovil.*

class ItemVida inherits ObjetoMovil {
	const incrementoVida = 1
	
	override method puntosObtenidos() = -100
	
	method image() = "vida.png" 
	/*
	method image()  {
		self.fuera(-1)
		return "vida.png" 
	}
	*/
	
    method efecto() {
    	jugador.modificarVida(incrementoVida)
     	game.removeVisual(self)
     }  
}