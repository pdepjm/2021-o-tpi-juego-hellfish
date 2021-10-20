import wollok.game.*
import score.*

object base {
	
	var property position = game.at(0,0) 
	
	method image() = "base.png"
	
	method impacto() {puntos.modificar(-100)}
	
    method impactadoPorArma(armaDelImpacto) {}
    
    method efecto() {puntos.modificar(-100)}
    
    method danio() = 0
    
	method colisionadoPor(unObjeto) {
    	unObjeto.efecto()
    	puntos.modificar(-100)
    } 
    
}