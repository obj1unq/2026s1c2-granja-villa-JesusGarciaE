import wollok.game.*
import cultivos.*

object personaje {
	var property position = game.center()
	const property image = "fplayer.png"
	method sembrarTomaco(){
		
	}
	method sembrarTrigo(){

	}
	method sembrarMaiz(){

	}
	method mover(direccion){
		const nuevaPosicion = direccion.siguiente(position)
		position = nuevaPosicion
	}
	method regar(planta){
	//	self.validarPlanta()
		planta.crecer()
	 }
	// method validarPLanta(){
	// 	if(self.position() = ))
	// }
}