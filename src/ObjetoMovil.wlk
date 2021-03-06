import wollok.game.*
import direcciones.*
import score.*

class ObjetoMovil {
	const property velocidad = 1
	
	var property position = game.at(3, 15)
	var property desplazamiento = arriba
	var property timerName = "TimerName" 
	
    method impactadoPorArma(arma) {	
    	game.removeVisual(self)
    	game.removeTickEvent(timerName)
    	puntos.modificar(self.puntosObtenidos())
    	
    	arma.impacto()
    }
    
     method impactadoPorBase() {	
    	game.removeVisual(self)
    	game.removeTickEvent(timerName)
    	puntos.modificar(-100)
    }
    
    method danio() = 0
    method puntosObtenidos() = 0
     
    method addObjetoMovil(nombreTimer, idTimer) {
    	timerName = nombreTimer.toString() + idTimer.toString()
    	game.onTick(350, timerName, { => position = desplazamiento.desplazar(position, velocidad)})
    	game.addVisual(self)
    }
}