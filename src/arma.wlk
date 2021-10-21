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
     	//position = game.at(-3,0)
     	estadoArma = armaEstatica
     	estadoArma.inicializarArma(self)
     	self.destruir()
    }
    
    method destruir() {
    	game.removeVisual(self)
    	game.removeTickEvent(timerName)
    }
    
    method efecto() {}
	
	/*
  	var property position = game.at(-3,0)
  	const property velocidad = 1

    method desplazar() {
    	estadoArma.desplazar(self)
    }

    method addArma(idArma) {
    	game.onTick(300, "desplazar", { => self.desplazar()})
    	game.addVisual(self)
    }
     
	method danio() = 0
     */    
}



object armaEstatica {
	method desplazar(arma) {}
	
	method inicializarArma(arma) {
		jugador.eliminarArma(arma)
	}
}

object armaDinamica {
	method inicializarArma(arma) {
		arma.position(jugador.position().down(2))
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