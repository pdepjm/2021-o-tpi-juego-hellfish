import wollok.game.*
import direcciones.*
import vida.*
import jugador.*
import arma.*
import pepita.*
import enemigo.*
import itemVida.*
import texto.*

class Visual {
	var property image
	var property position = game.origin()
}

/*
object fondoDelJuego inherits Visual(
	image = "page_background.png",
	position = new Position(x=0,y=0)
){
	method colisionadoPor(visual){}
	method danio() = 0
}
*/

const gameOver = new Visual(
	image = "gameover_v2.0.png", 
	position = game.at(0,0)
)

object nivel {
	
	method configuracionInicial(){
		// Tamanio frame
		game.height(12)
		game.width(9)
		
		// Fondo
		//game.addVisual(fondoDelJuego)
		game.boardGround("page_background.png")
		
		// Personaje
		game.addVisual(jugador)
		game.addVisual(texto)
		game.addVisual(vida)
		game.addVisual(lanza)
		
		// Enemigos
		game.addVisual(new Enemigo(posicion = game.at(6, 20)))
		game.addVisual(new Enemigo(posicion = game.at(2, 25)))
		game.addVisual(new Enemigo(posicion = game.at(3, 30)))
		game.addVisual(new Enemigo(posicion = game.at(5, 35)))
		
		// Item Vida
		game.addVisual(new ItemVida(posicion = game.at(3, 15)))
				
		//	Comandos	
		self.configurarTeclas()
		
		// Colicion
		self.configurarColisiones()
		
		//game.addVisual(pepita)
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ jugador.moverPara(izquierda) })	
		keyboard.right().onPressDo({ jugador.moverPara(derecha) })
		keyboard.up().onPressDo({ jugador.disparar() })
	}
		
	method configurarColisiones() {		
	    game.whenCollideDo(jugador.arma(), {e => e.impacto()})
	    game.whenCollideDo(jugador, {e =>  jugador.colisionadoPor(e.danio())})			
     }	    

	method gameOver(){
		game.clear()
		game.title("Perdiste")
        game.addVisual(gameOver)		
	}
}
	