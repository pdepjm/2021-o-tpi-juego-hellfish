import wollok.game.*
import direcciones.*
import vida.*
import jugador.*
import arma.*
import pepita.*


object nivel {
	method configuracionInicial(){
		game.height(9)
		game.width(9)
		game.addVisual(fondoDelJuego)
		game.addVisual(jugador)
		game.addVisual(vida)
		game.addVisual(lanza)
		
		self.configurarTeclas()
		self.configurarColisiones()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ jugador.moverPara(izquierda) })	
		keyboard.right().onPressDo({ jugador.moverPara(derecha) })
		keyboard.up().onPressDo({ jugador.disparar() })
	}
	
	
	method configurarColisiones() {
		//game.onCollideDo(arcoiris, { algo => jugador.cambiarColor(paleta.colorPrimarioAlAzar()) manolo.deciColorPepita()})
		
			//game.whenCollideDo(jugador.lanzas(), {e =>  e.morir()})
			game.onCollideDo(jugador.arma(), {e =>  e.morir()})

	}
	
}
