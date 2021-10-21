import wollok.game.*
import score.*

object base {
	
	var property position = game.at(0,0) 
	
	method impacto() {puntos.modificar(-100)}
	
    method impactadoPorArma(armaDelImpacto) {}
    
    method efecto() {puntos.modificar(-100)}
    
    method danio() = 0
    
	method colisionadoPor(unObjeto) {
    	unObjeto.efecto()
    	puntos.modificar(-100)
    }
     
}

/*
class Cuadrado {
	var property position = game.at(0,0)
	
	method impactoBase(objeto) {
		objeto.impacto()
	}
	
	method incializar() {}
}

// Game
* // Objecto base
* //-> inicializar
var base=[]
// Inicializar
(1 .. ancho-1).forEach { n => base[n] = new Cuadrado(position=n+1) }
* 
// Inicializar colicion
(1 .. ancho-1).forEach { n => game.oncollitiondo(base[n],{}) }
*/
