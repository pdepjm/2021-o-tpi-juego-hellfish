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
	image = "gameOverFoto4.png", 
	position = game.at(0,0)
)

const youWin = new Visual(
	image = "you-win.png", 
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
		game.addVisual(textoVida)
		game.addVisual(textoScore)
		game.addVisual(vida)
		lanza.addArma()
		
		
		// Enemigos
		// timer para enemigos
		const enemigo1 = new Enemigo(position = game.at(6, 20),desplazamiento = abajo)
		const enemigo2 = new Enemigo(position = game.at(2, 25),desplazamiento = abajo)
		const enemigo3 = new Enemigo(position = game.at(3, 30),desplazamiento = abajo)
		const enemigo4 = new Enemigo(position = game.at(5, 35),desplazamiento = abajo)
		
		// Item Vida
		//game.addVisual(new ItemVida(posicion = game.at(3, 15)))
		const vidaExtra = new ItemVida(position = game.at(3, 15),desplazamiento = abajo)
				
		enemigo1.addObjetoMovil()
		enemigo2.addObjetoMovil()
		enemigo3.addObjetoMovil()
		enemigo4.addObjetoMovil()
		vidaExtra.addObjetoMovil()
		
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
	    game.whenCollideDo(jugador.arma(), {e => jugador.arma().impactar(e)})
	    game.whenCollideDo(jugador, {e =>  jugador.colisionadoPor(e)})			
     }	    

	method gameOver(){
		game.clear()
		game.title("Perdiste")
        game.addVisual(gameOver)		
	}
	
	method ganaste(){
		game.clear()
		game.title("Ganaste")
        game.addVisual(youWin)		
	}
}
	