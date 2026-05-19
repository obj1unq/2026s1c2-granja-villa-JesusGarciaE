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
}

class Trigo {
	var property position   
	var property imagenAMostrar = "wheat_0.png" 
	method image (){
		return imagenAMostrar
	}
	method crecer() {
		imagenAMostrar = "wheat_" + cantidadDeRiegos.cantidadDeRiegos()+  ".png"
	}
}

object cantidadDeRiegos {
	var property cantidad = 0
	// method aumentar(){
	// 	cantidad = cantidad + 1
	// }
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
		self.image()
	}
}