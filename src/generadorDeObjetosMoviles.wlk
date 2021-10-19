import wollok.game.*
import direcciones.*
import enemigo.*
import itemVida.*


object generadorDeObjetosMoviles {
	var property posicionY = game.height() + 1
		
	method generarEnemigo() {
		const posicionX = random.getRandom(game.width())
		
		const enemigo = new Enemigo(position = game.at(posicionX, posicionY), desplazamiento = abajo)
		enemigo.addObjetoMovil()
	}
	
	method generarItemVida() {
		const posicionX = random.getRandom(game.width())
		
		const vidaExtra = new ItemVida(position = game.at(posicionX, posicionY), desplazamiento = abajo)
		vidaExtra.addObjetoMovil()
	}
}


object random {
	method getRandom(tope) = 0.randomUpTo(tope).truncate(0)
}