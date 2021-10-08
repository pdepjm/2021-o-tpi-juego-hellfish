import wollok.game.*
import Objeto.*

/*
class Enemigo {
	var posicion = game.at(3, 15)
	
	method image() {
		return "enemigo_bola1.png"
	} 
	
    method position() { 
    	posicion = posicion.down(0.06)
    	return posicion
    }
    
    method impacto(){
    	game.say(self, "Aaaaaaaaaaa")
    	game.removeVisual(self)
    }
    
    method danio(){
    	game.removeVisual(self)
    	return -1
    }
}
*/

class Enemigo inherits Objeto {
	
	method image() {
		return "enemigo_bola1.png"
	} 
    
    override method danio(){
    	game.removeVisual(self)
    	return -1
    }
}

