import direcciones.*
import wollok.game.*
import vida.*
import score.*
import arma.*


object jugador {

    var property position = game.at(0,0) 
    const arma = lanza
    const vidas = vida
    var property direccion = arriba

    
    method colisionadoPor(unObjeto) {
    	//vidas.modificar(deltaVida)
    	//puntos.modificar(deltaVida*100)
    	unObjeto.efecto()
    	vidas.modificar(unObjeto.danio())
    	puntos.modificar(100) // aca tene lo puntos de cada objeto
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

    method moverPara(nuevaDireccion) {
		position = nuevaDireccion.proximaPosicion(position) 
		direccion = nuevaDireccion
	}

    method obtenerVidas() = vidas
    
    method incrementarVida() {
    	vidas.modificar(1)
    }
    
    method modificarVida(deltaVida) {
    	vidas.modificar(deltaVida)
    }
    
    method impacto() {}
    
}