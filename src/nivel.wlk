import wollok.game.*
import direcciones.*
import vida.*
import jugador.*
import arma.*
import pepita.*


object nivel {
	method configuracionInicial(){
		game.height(10)
		game.width(10)
		
		game.addVisual(jugador)
		game.addVisual(vida)
		
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
		
		if(jugador.tengoArma())
			game.whenCollideDo(jugador.lanzas(), {e =>  e.morir()})
			//game.onCollideDo(jugador.lanzas(), {e =>  e.morir()})

	}
	
}
