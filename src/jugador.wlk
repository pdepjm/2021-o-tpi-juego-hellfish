import direcciones.*
import wollok.game.*
import vida.*
import arma.*


object jugador {

    var posicion = game.at(0,0) 
    const arma = lanza
    const vidas = vida
    var property direccion = arriba

    
    method colisionadoPor(deltaVida) {
    	vidas.modificar(deltaVida)
    } 
    
	method image() = "jugador_" + direccion.nombre() + ".png"
	
	method arma() = arma
	
	method disparar() {
		arma.disparar(self)
		self.mirarParaArriba()
	}
	
	method mirarParaArriba(){
		direccion = arriba
	}
	
	method position() = posicion

    method moverPara(nuevaDireccion) {
		posicion = nuevaDireccion.proximaPosicion(posicion) 
		direccion = nuevaDireccion
	}

    method obtenerVidas() = vidas
     
}