import wollok.game.*

class Objeto {
	var posicion = game.at(3, 15)
	
    method position() { 
    	posicion = posicion.down(0.06)
    	//posicion = posicion.down(1)
    	return posicion
    }
    
    method impacto(){
    	game.removeVisual(self)
    }
    
   	method colisionadoPor(personaje){
    	game.removeVisual(self)
    }
    
     method danio() {
     	game.removeVisual(self)
    	return 0
     }
     
}
