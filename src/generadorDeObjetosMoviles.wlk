import wollok.game.*
import direcciones.*
import enemigo.*
import itemVida.*
import bonus.*


object generadorDeObjetosMoviles {
	var property posicionY = game.height() + 1
	var property cantidadGenerada = 0
		
	method generarEnemigo() {
		const posicionX = random.getRandom(game.width())
		
		const enemigo = new Enemigo(position = game.at(posicionX, posicionY), desplazamiento = abajo)
		enemigo.addObjetoMovil("desplazar", cantidadGenerada)
		
		self.incrementarCantidadGenerada()
		
	}
	
	method generarItemVida() {
		const posicionX = random.getRandom(game.width())
		
		const vidaExtra = new ItemVida(position = game.at(posicionX, posicionY), desplazamiento = abajo)
		vidaExtra.addObjetoMovil("desplazar", cantidadGenerada)
		
		self.incrementarCantidadGenerada()
	}
	
	
	method generarBonus() {
		const posicionX = random.getRandom(game.width())
		
		const bonus = new Bonus(position = game.at(posicionX, posicionY), desplazamiento = abajo)
		bonus.addObjetoMovil("desplazar", cantidadGenerada)
		
		self.incrementarCantidadGenerada()
	}
	
	
	method incrementarCantidadGenerada() {
		cantidadGenerada++
	}
}


object random {
	method getRandom(tope) = 0.randomUpTo(tope).truncate(0)
}