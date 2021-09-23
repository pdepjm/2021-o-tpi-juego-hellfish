import wollok.game.*

object pepita {

	method position() = game.center()

	method image() = "pepita.png"
	
	method morir() {
		game.removeVisual(self)
		game.say(self, "Aaaaaaaaaaa")
	}

}