import wollok.game.*
import cultivos.*

object personaje {
	var property position = game.center()
	const property image = "fplayer.png"
	method sembrarTomaco(){
		game.addVisual(new Tomaco(position = self.position()))
	}
	method sembrarTrigo(){
		game.addVisual(new Trigo(position = self.position()))
	}
	method sembrarMaiz(){
		game.addVisual(new Maiz(position = self.position()))
	}
	method mover(direccion){
		const nuevaPosicion = direccion.siguiente(position)
		position = nuevaPosicion
	}
	method regar(planta){
		self.validarPlanta(planta)
		planta.crecer()
	 }
	 method validarPlanta(planta){
	 	if(not(self.position() == planta.position())){
			self.error( "no tengo nada para regar ")
		}
	 }
	 method cosechar(planta){
		self.validarPlanta2(planta)
		planta.retirar()
		self.agregarAMochila()
	}
	method validarPlanta2(planta){
	 	if(not(self.position() == planta.position())){
			self.error( "no se puede cosechar")
		}
	 }
	 method agregarAMochila(){
		
	 }
}