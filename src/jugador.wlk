import direcciones.*
import wollok.game.*
import vida.*
import arma.*

//const arma = new Lanza()

object jugador {

    var posicion = game.at(0,0) 
    var arma = null
    var vidas = vida
    var direccion = arriba
    
	method image() {
		return "jugador_" + direccion.nombre() + ".png"
	} 
	
	method disparar(){
		arma = new Lanza()
		game.addVisual(arma)
		arma.disparar(self)
		//arma.moverPara(arriba) 
		self.mirarParaArriba()
	}
	
	method mirarParaArriba(){
		direccion = arriba
	}
	
	method position() = posicion
	
	method posicion(unaPosicion) {
		 posicion = unaPosicion
	} 

    method moverPara(nuevaDireccion) {
		posicion = nuevaDireccion.proximaPosicion(posicion) 
		direccion = nuevaDireccion
	}

    method obtenerVidas() = vidas
    
    method lanzas() = arma
    
    method tengoArma() = arma != null
}
