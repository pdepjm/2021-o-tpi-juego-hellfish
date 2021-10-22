import wollok.game.*
import score.*
import ObjetoMovil.*


class Cuadrado {
	var property position = game.at(0, 0)
	
	method image() = "piedra.png"
	
	method danio() = 0
    method puntosObtenidos() = 0
    method efecto() {}
    method impactadoPorArma(arma) {}
    
	method addBase() {
    	game.addVisual(self)
    	game.whenCollideDo(self, {objeto => self.impactar(objeto)})
    }
    
    method impactar(unObjeto) {
     	unObjeto.impactadoPorBase()
    } 
      
}
object base {
	
	var posicionBaseX = 0
	var cantidadGenerada = 0

	method generarBase() {
		const base = new Cuadrado(position = game.at(posicionBaseX, 0))
		base.addBase()
		
		self.incrementarCantidadGenerada()
		posicionBaseX = posicionBaseX+1	
 	}
 	
    method incrementarCantidadGenerada() {
		cantidadGenerada++
	} 
	
}