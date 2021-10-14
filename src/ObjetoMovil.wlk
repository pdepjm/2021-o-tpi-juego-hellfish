import wollok.game.*
import direcciones.*

class ObjetoMovil {
	const velocidad = 1
	var property position = game.at(3, 15)
	var property desplazamiento = arriba  
	
 
    method impactadoPor(){
    	game.removeVisual(self)
    }
    
   	method colisionadoPor(personaje){
    	game.removeVisual(self)
    }
    
    method danio() = 0
     
    //method desplazarAsiArriba() {
    	//position = position.up(velocidad)
    //}
    
    //method desplazarAsiAbajo() {
    	//position = position.down(velocidad)
    //}
    
    method addObjetoMovil() {
    	//game.onTick(300, "desplazar", { => self.desplazarAsiArriba()})
    	game.onTick(300, "desplazar", { => position = desplazamiento.desplazar(position, velocidad)})
    	game.addVisual(self)
    }
}
