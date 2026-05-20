import wollok.game.*

class Maiz {
	var property imagenAMostrar = "corn_baby.png" 
	var property position 
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return imagenAMostrar
	}
	method crecer(){
		imagenAMostrar = "corn_adult.png"
	}
	method retirar(){
		game.removeVisual(Maiz)
	}
}

class Trigo {
	var property position   
	var property imagenAMostrar = "wheat_0.png" 
	method image (){
		return imagenAMostrar
	}
	method crecer() {
		imagenAMostrar = "wheat_" + cantidadDeRiegos.cantidadDeRiegos() + ".png"
	}
	method retirar(){
		game.removeVisual(Trigo)
	}
}

object cantidadDeRiegos {
	var property cantidad = 0
	 method cuentaDeRiegos(){
		if(cantidad == 3){
			cantidad = 0
		}
	 	else cantidad = cantidad + 1
	 }
	method cantidadDeRiegos(){
		return cantidad
	}
}

class Tomaco {
	var property position 
	method image(){
		return "tomaco.png"
	}
	method crecer(){
		if(Tomaco.position() == game.height()) {
			position = game.at(Tomaco.position().x(), 0)
		}
		else  {
			position = Tomaco.position().y() + 1
		}
	}
	method retirar(){
		game.removeVisual(Tomaco)
	}
}