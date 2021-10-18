import wollok.game.*
import vida.*
import score.*

// ¡Los visuales también pueden ser texto!
// Hay que definir la posición en la que debe aparecer
// Y el texto que se debe mostrar. Para eso debe implementar el método text()
// el cual debe devolver un string
// Por defecto el color es azul, pero se puede modificar
// Para ello debe entender el mensaje textColor()
// El método debe devolver un string que represente el color
// Debe ser en un formato particular: tiene que ser un valor RGBA en hexa "rrggbbaa"
// Les dejamos algunos ejemplos
// ¡También se puede combinar con las imágenes!

object textoVida {	
	method position() = game.at(6, 11)
	
	method text() = "Vida:" + (vida.vidas()).toString()
	
	method textColor() = paleta.rojo()
	
	method impactadoPorArma(arma) {}
}


object textoScore {
	
	method position() = game.at(1, 11)
	
	method text() = "Score:" + (puntos.puntos()).toString()
	
	method textColor() = paleta.verde()
	
	method impactadoPorArma(arma) {}
}


object textoScore2 {
	
	method position() = game.at(3, 3)
	
	method text() = "Score:" + (puntos.puntos()).toString()
	
	method textColor() = paleta.verde()
	
	method impactadoPorArma(arma) {}
}

object paleta {
	method verde() = "00FF00FF"
	method rojo() = "FF0000FF"
}
