import wollok.game.*
import direcciones.*
import vida.*
import jugador.*
import arma.*
import pepita.*
import enemigo.*
import item.*


object nivel {
	method configuracionInicial(){
		game.height(12)
		game.width(9)
		//game.addVisual(fondoDelJuego)
		game.addVisual(jugador)
		game.addVisual(vida)
		game.addVisual(lanza)
		var bola1= new Enemigo(posicion = game.at(6, 20))
		var bola2= new Enemigo(posicion = game.at(2, 25))
		var bola3= new Enemigo(posicion = game.at(3, 30))
		var bola4= new Enemigo(posicion = game.at(5, 35))
		var item= new Item(posicion = game.at(5, 15))
		game.addVisual(bola1)
		game.addVisual(bola2)
		game.addVisual(bola3)
		game.addVisual(bola4)
		
		
		self.configurarTeclas()
		self.configurarColisiones()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ jugador.moverPara(izquierda) })	
		keyboard.right().onPressDo({ jugador.moverPara(derecha) })
		keyboard.up().onPressDo({ jugador.disparar() })
	}
	
	
	method configurarColisiones() {
		
	    game.onCollideDo(jugador.arma(), {e =>  e.impacto()})
	    game.onCollideDo(jugador, {e =>  jugador.colisionadoPor(e.danio())})
			
     }
	
}
