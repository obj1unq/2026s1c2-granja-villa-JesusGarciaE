import wollok.game.*

class Maiz {
	var property imagenAMostrar = "corn_baby.png" 
	var property position 
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return imagenAMostrar
	}
	method regado(){
		imagenAMostrar = "corn_adult.png"
	}
}

class Trigo {
	var property position   
	method image (){
		return "wheat_0.png"
	}
	method regado() {

	}
}

class Tomaco{
	var property position 
	method image(){
		return "tomaco.png"
	}
	method regado(){
		self.image()
	}
}