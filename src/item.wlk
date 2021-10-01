import wollok.game.*
class Item {
	var posicion = game.at(3, 15)
	
	
	method image() {
		return "vida.png"
	} 
	
	method posicion (x,y) = posicion 
	
   method position() { 
    	posicion = posicion.down(0.05)
    	return posicion
    }
    
    
    
   method colisionadoPor(){
    	game.removeVisual(self)
    }
    
    
     method danio(){
    	return 1
    }
}
