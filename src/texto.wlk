import wollok.game.*
import vida.*
import score.*

object textoVida {	
	method position() = game.at(6, 11)
	
	method text() = "Vida:" + vida.cantidad().toString()
	
	method textColor() = paleta.rojo()
	
	method impactadoPorArma(arma) {}
}

object textoScore {
	
	method position() = game.at(1, 11)
	
	method text() = "Score:" + puntos.puntos().toString()
	
	method textColor() = paleta.verde()
	
	method impactadoPorArma(arma) {}
}

object textoScoreFinal {
	
	method position() = game.at(4, 5)
	
	method text() = "Terminaste con " + puntos.puntos().toString() + " puntos de score"
	
	method textColor() = paleta.verde()
	
	method impactadoPorArma(arma) {}
}

object paleta {
	method verde() = "00FF00FF"
	method rojo() = "FF0000FF"
}