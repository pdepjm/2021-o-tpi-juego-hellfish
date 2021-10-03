import wollok.game.*

object pepita {

	method position() = game.at(0, 8)

	method image() = "pepita.png"
	
	method impacto() {
		//game.removeVisual(self)
		game.say(self, "Aaaaaaaaaaa")
	}
}

/*object fondoDelJuego {
	method image() = "page_background.PNG"
	method position() = new Position(x=0,y=0)
}*/