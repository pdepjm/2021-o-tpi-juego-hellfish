import wollok.game.*
import jugador.*
import score.*
import ObjetoMovil.*


class Lanza inherits ObjetoMovil {
	const property cantidadLanzasLanzadas = lanzasLanzadas
	var estadoArma = armaEstatica
	
	method image() = "lanza.png"
	
	override method addObjetoMovil(nombreTimer, idTimer) {
		super(nombreTimer, idTimer)
		self.disparar(jugador)
	}
	
	method disparar(personaje) {
		estadoArma = armaDinamica
		estadoArma.inicializarArma(self)
	}
	
	method impactar(unObjeto) {
     	unObjeto.impactadoPorArma(self)
    } 
     
	method impacto() {
     	estadoArma = armaEstatica
     	estadoArma.inicializarArma(self)
     	self.destruir()
    }
    
    method destruir() {
    	game.removeVisual(self)
    	game.removeTickEvent(self.timerName())
    }
    
    method efecto() {}
    
    override method impactadoPorArma(arma) {}    
}


object armaEstatica {
	method desplazar(arma) {}
	
	method inicializarArma(arma) {
		jugador.eliminarArma(arma)
	}
}

object armaDinamica {
	method inicializarArma(arma) {
		arma.position(jugador.position())
		game.whenCollideDo(arma, {e => arma.impactar(e)})
	}
	
	method desplazar(arma) {
		arma.position(arma.position().up(arma.velocidad()))
	}
}


object lanzasLanzadas {
	var cantidad = 0;
	
	method incrementar() {
		cantidad++
	}
	method cantidad() = cantidad
}