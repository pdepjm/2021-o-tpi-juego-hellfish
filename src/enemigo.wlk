import wollok.game.*
class Enemigo {
	var posicion = game.at(3, 15)
	
	
	method image() {
		return "enemigo_bola0.png"
	} 
	
	method posicion (x,y) = ( posicion = game.at(x,y))
	
    method position() { 
    	posicion = posicion.down(0.05)
    	return posicion
    }
    
    method impacto(){
    	game.removeVisual(self)
    }
}

