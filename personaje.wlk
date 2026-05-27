import wollok.game.*
import cultivos.*

object personaje {
	var property position = game.center()
	const property image = "fplayer.png"
	const mochila  =#{}
	var cantidadDeOro = 0
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
	method regar(){
		const objetosEnPosicion = game.getObjectsIn(self.position())
		const planta = objetosEnPosicion.find({objeto => objeto.esPlanta()})
		self.validarPlanta(planta)
		planta.crecer()
	 }
	 method validarPlanta(planta){
	 	if(not(self.position() == planta.position())){
			self.error( "no tengo nada para regar ")
		}
	 }
	 method cosechar(){
		const objetosEnPosicion = game.getObjectsIn(self.position())
		const planta = objetosEnPosicion.find({objeto => objeto.esPlanta()})
		self.validarPlanta2(planta)
		planta.retirar()
		self.agregarAMochila(planta)
	}
	method validarPlanta2(planta){
	 	if(not(self.position() == planta.position())){
			self.error( "no se puede cosechar")
		}
	 }
	 method agregarAMochila(objeto){
		mochila.add(objeto)
	 }
	 method vender(plantasEnMochila){
		self.validarTienda()
		cantidadDeOro = cantidadDeOro + self.precioDePLantas()
		mochila.clear()
	 }
	 method validarTienda(){
	 	if(not(self.position() == tienda.position())){
			self.error( "no estoy en la tienda")
		}
	 }
	 method precioDePLantas(){
		return mochila.sum({planta => planta.precio()})
	}
	method cantidadDeOro(){
		return cantidadDeOro
	}
	method plantasAVender(){
		return mochila.size()
	}
	method esPlanta(){
		return false

	}
}
object tienda{
	method image(){
		return "market.png"
	}
	method position(){
		return game.at(game.width()-1, game.height()-1)
	}
}
