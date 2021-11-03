import wollok.game.*
import ObjetoMovil.*
import jugador.*
import score.*
import vida.*

class Enemigo inherits ObjetoMovil {
	var numeroEnemigo = vida.cantidad()-1 
	
	method image() = "enemigo_bola"+numeroEnemigo.toString()+".png"
    
    override method danio() = -1
    override method puntosObtenidos() = 100
    
    method efecto() {    	
    	game.removeVisual(self)
   }
}