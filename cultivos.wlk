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
		game.removeVisual(self)
	}
	method precio(){
		return 150 
	}
	method esPlanta(){
		return true
	}
}

class Trigo {
	var property position   
	var property imagenAMostrar = "wheat_0.png" 
	method image (){
		return imagenAMostrar
	}
	method crecer() {
		imagenAMostrar = "wheat_" + new CantidadDeRiegos().cantidadDeRiegos() + ".png"
	}
	method retirar(){
		game.removeVisual(self)
	}
	method precio(){
		if (game.hasVisual(self).image() == "wheat_2.png"){
			return 100
		}
		else return 200
	}
	method esPlanta(){
		return true
	}
}

class CantidadDeRiegos {
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
		if(not (self.estaEnBorde())) {
			self.subir()
			
		}
		else  {
			self.irAlBorde()
		}
	}
	method estaEnBorde(){
		return self.position().y() == game.height()-1
	}
	method subir(){
		position = game.at(self.position().x(), self.position().y() + 1)
	}
	method irAlBorde(){
		position = game.at(self.position().x(),0)
	}
	method retirar(){
		game.removeVisual(self)
	}
	method precio(){
		return 80
	}
	method esPlanta(){
		return true
	}
}
