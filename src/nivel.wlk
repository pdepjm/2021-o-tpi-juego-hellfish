import wollok.game.*
import direcciones.*
import vida.*
import jugador.*
import arma.*


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
		
		
		//keyboard.r().onPressDo({ jugador.cambiarColor(paleta.colorAlAzar()) } )
		
	}
	
	
	method configurarColisiones() {
		//game.onCollideDo(arcoiris, { algo => jugador.cambiarColor(paleta.colorPrimarioAlAzar()) manolo.deciColorPepita()})
		
	}
	
}
