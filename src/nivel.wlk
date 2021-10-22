import wollok.game.*
import direcciones.*
import vida.*
import jugador.*
import arma.*
import pepita.*
import enemigo.*
import itemVida.*
import texto.*
import base.*
import generadorDeObjetosMoviles.*


class Visual {
	var property image
	var property position = game.origin()
}

const gameOver = new Visual(
	image = "gameOver.png", 
	position = game.at(0,0)
)


object nivel {
	
	method configuracionInicial(){
		// Tamanio frame
		game.height(12)
		game.width(9)
		
		// Fondo
		game.boardGround("page_background.png")
		
		// Personajes
		game.addVisual(jugador)
		game.addVisual(textoVida)
		game.addVisual(textoScore)
		game.addVisual(vida)
		
		//	Movimientos	
		self.configurarTeclas()
		
		// Colicion
		self.configurarColisiones()
		
		//Base
		self.configurarBase()
		
		// Generador de objetos
		game.onTick(2000, "generarEnemigo", { => generadorDeObjetosMoviles.generarEnemigo()})
		game.onTick(10000, "generaritemVida", { => generadorDeObjetosMoviles.generarItemVida()})
	}
	
	
	method configurarBase() {
		//forEach(n => base[n]){}
		//(1 .. 9).forEach ( n => base[n]) = new Cuadrado(position=n+1)
		//10.times(generadorDeObjetosMoviles.generarBase())
		base.generarBase()
		base.generarBase()
		base.generarBase()
		base.generarBase()
		base.generarBase()
		base.generarBase()
		base.generarBase()
		base.generarBase()
		base.generarBase()
	}
	
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ jugador.moverPara(izquierda) })	
		keyboard.right().onPressDo({ jugador.moverPara(derecha) })
		keyboard.up().onPressDo({ jugador.disparar() })
	}
		
	method configurarColisiones() {		
	    //game.whenCollideDo(jugador.arma(), {e => jugador.arma().impactar(e)})
	    //jugador.armas().forEach({arma => game.whenCollideDo(arma, {e => arma.impactar(e)})})
	    game.whenCollideDo(jugador, {e =>  jugador.colisionadoPor(e)})
	   // game.whenCollideDo(base, {e =>  base.colisionadoPor(e)})
	   
	   
     }	    

	method gameOver(){
		game.clear()
		game.title("Perdiste")
        game.addVisual(gameOver)
        game.addVisual(textoScoreFinal)		
	}
	
}
	