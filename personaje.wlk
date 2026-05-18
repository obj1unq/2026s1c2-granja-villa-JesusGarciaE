import wollok.game.*

object personaje {
	var property position = game.center()
	const property image = "fplayer.png"
	method sembrarTomaco(){
		//game.addVisual(new Tomaco().image())

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
		planta.regado()
	 }
	// method validarPLanta(){
	// 	if(self.position() = ))
	// }
}