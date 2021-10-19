import wollok.game.*
import score.*

object base {
	
	var property position = game.at(0,-1) 
	
	method image() = "base.png"
	
	
	method impacto() {//puntos.modificar(-100)}
	}
	
    method impactadoPorArma(armaDelImpacto) {}
    
    method efecto() {}
    
    method danio() = 0
    
	/*method colisionadoPor(unObjeto) {
    	unObjeto.efecto()
    	vidas.modificar(unObjeto.danio())
    } */
    
}