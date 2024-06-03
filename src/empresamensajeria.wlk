import example.*
import destinos.*

object empresaMensajeria{
	var mensajeros = []
	method contratarMensajero(mensajero){
		return mensajeros.add(mensajero)
	}
	
	method despedirMensajero(mensajero){
		return mensajeros.remove(mensajero)
	}
	
	method despedirATodos(){
		return mensajeros.removeAll(mensajeros)
	}
	
	method mensajeriaGrande(){
		return mensajeros.size() > 2
	}
	
	method puedeEntregarElPrimero(){
		return (puente.dejaPasar(mensajeros.first()) or matrix.dejaPasar(mensajeros.first()))
	}
	
	method pesoUltimoMensajero(){
		return mensajeros.last().peso()
	}
	
	
}
