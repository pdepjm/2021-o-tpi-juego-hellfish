import direcciones.*
import wollok.game.*
import vida.*
import score.*
import arma.*


object jugador {

    var property position = game.at(0,1) 
    const property armas = []
    const vidas = vida
    var property direccion = arriba

    
    method colisionadoPor(unObjeto) {
    	unObjeto.efecto()
    	vidas.modificar(unObjeto.danio())
    } 
    
	method image() = "jugador_" + direccion.nombre() + ".png"
	
	method disparar() {		
		self.addArma()
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
        	
	method addArma() {
		self.chequearCantidadDeArmas()
		
		const nuevaArma = new Lanza() 
		armas.add(nuevaArma)
		nuevaArma.addObjetoMovil("arma", nuevaArma.cantidadLanzasLanzadas().cantidad())
		nuevaArma.cantidadLanzasLanzadas().incrementar()
	}
	
	method chequearCantidadDeArmas() {
    	if(armas.size() >= 3) {
    		const armaVieja = armas.get(0)
    		self.eliminarArma(armaVieja)
    		armaVieja.destruir()
    	}
    }
    
    method eliminarArma(arma) {
    	armas.remove(arma)
    }
    
    method impacto() {}
    method impactadoPorArma(armaDelImpacto) {}
    method impactadoPorBase(base) {}
}