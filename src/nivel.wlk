import wollok.game.*
import direcciones.*


object nivel {
	method configuracionInicial(){
		game.addVisual(jugador)
		game.addVisual(manolo)
		game.addVisual(arcoiris)
		self.configurarTeclas()
		self.configurarColisiones()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ jugador.moverPara(izquierda) })	
		keyboard.right().onPressDo({ jugador.moverPara(derecha) })
		
		keyboard.r().onPressDo({ jugador.cambiarColor(paleta.colorAlAzar()) } )
		
	}
	
	
	method configurarColisiones() {
		game.onCollideDo(arcoiris, { algo => jugador.cambiarColor(paleta.colorPrimarioAlAzar()) manolo.deciColorPepita()})
		
	}
	
}
