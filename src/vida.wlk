import wollok.game.*
import nivel.*

object vida {
	var property cantidad = 1
	var property position = game.at(7,11)
	
	method image() = "vida.png"
	
	method modificar(cant) {
		if(cantidad!=6){
			cantidad = cantidad + cant
		}
		
		self.chequearVida()
	}
	
	method chequearVida(){
		if(cantidad==0){
			nivel.gameOver()
		}
	}
	
	method impactadoPorArma(arma) {} 	
}