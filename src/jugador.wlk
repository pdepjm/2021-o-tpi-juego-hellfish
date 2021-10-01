import direcciones.*
import wollok.game.*
import vida.*
import arma.*

//const arma = new Lanza()

object jugador {

    var posicion = game.at(0,0) 
    var arma = lanza
    var vidas = vida
    var property direccion = arriba
    
    method colisionadoPor(deltaVida){
    	vidas.modificar(deltaVida)
    }
    
    method arma() {
    	return arma 
    }
    
	method image() {
		return "jugador_" + direccion.nombre() + ".png"
	} 
	
	method disparar(){
		arma = lanza
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
     
}