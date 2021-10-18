import wollok.game.*
import jugador.*
import score.*
import ObjetoMovil.*


// hacer desaparecer el objeto
object lanza {
  	var property position = game.at(-3,0)
  	const property velocidad = 1
  	var estadoArma = armaEstatica
  	
  		  
  	method image() = "lanza.png"
 	
	method disparar(personaje) {
		estadoArma = armaDinamica
		estadoArma.inicializarArma(self)
	}

    method desplazar() {
    	estadoArma.desplazar(self)
    }

    method addArma() {
    	game.onTick(300, "desplazar", { => self.desplazar()})
    	game.addVisual(self)
    }
    
    method impactar(unObjeto) {
     	unObjeto.impactadoPorArma(self)
    } 
     
	method impacto() {
     	position = game.at(-3,0)
     	estadoArma=armaEstatica
     }
     
     method danio() = 0
     
     method efecto() {}    
}



object armaEstatica {
	method desplazar(arma) {}
	method inicializarArma(arma) {}
}

object armaDinamica {
	method inicializarArma(arma) {
		arma.position(jugador.position().down(2))
	}
	
	method desplazar(arma) {
		arma.position(arma.position().up(arma.velocidad()))
	}
}
