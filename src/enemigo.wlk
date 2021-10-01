import wollok.game.*
class Enemigo {
	var posicion = game.at(3, 10)
	
	
	method image() {
		return "enemigo_bola0.png"
	} 
	
	method posicion (x,y) = ( posicion = game.at(x,y))
	
    method position() { 
    	posicion = posicion.down(0.1)
    	return posicion
    }
}

