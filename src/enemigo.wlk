import wollok.game.*
class Enemigo {
	var posicion = game.at(2,3)
	var bola = bola0
	
	method image() {
		return "enemigo_" + bola.nombre() + ".png"
	} 
	
	method tipoBola(tipo) = ( bola = tipo ) 
	method posicion (x,y) = ( posicion = game.at(x,y))
	
	method bola(){
		return bola
	}
	method position() {
		return posicion
	}	
}

object bola0 {
	method nombre() = "bola0"	
}
object bola1 {
	method nombre() = "bola1"	
}
object bola2 {
	method nombre() = "bola2"	
}
object bola3 {
	method nombre() = "bola3"	
}
object bola4 {
	method nombre() = "bola4"	
}
object bola5 {
	method nombre() = "bola5"	
}
