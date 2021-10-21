import wollok.game.*
import ObjetoMovil.*
import jugador.*
import score.*

class Enemigo inherits ObjetoMovil {
	
	method image() = "enemigo_bola1.png"
	/*
	method image()  {
		self.fuera(-5)
		return "enemigo_bola2.png"
	}
    */
    
    override method danio() = -1
    override method puntosObtenidos() = 100
    
    method efecto() {
    	game.removeVisual(self)
   }
   
}