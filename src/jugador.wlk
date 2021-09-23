import direcciones.*
import wollok.game.*
import vida.*
import arma.*

object jugador {

    var posicion = game.at(0,0) 
    var arma = null
    var vidas = vida
    var direccion = arriba
	
	method image() {
		return "jugador_" + direccion.nombre() + ".png"
	} 
	
	method disparar(){
		self.mirarParaArriba()
		
		arma = new lanza()
		game.addVisual(arma)
		arma.disparar(self)
		//arma.moverPara(arriba) 
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
}
