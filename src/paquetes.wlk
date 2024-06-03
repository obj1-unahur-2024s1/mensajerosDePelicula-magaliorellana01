import destinos.*
import example.*
import empresamensajeria.*

object paquetito {
	const mensajeros = []
	
	method precio(){
		return 0
	}
	
	method mensajeroQuePuedeLlevar(){
		return mensajeros
	}
	
	method destinos(){
		
	}
	
	method puedeSerEnviado(){
	
	}
}

object pequetonViajero {
	const mensajeros = []
	const destino = []
	var property valorAbonado = 0 
	
	method precio (){
		return 100 * destino.size()
	}
	
	method destinos(){
		return destino
	}
	
	method puedeSerEnviado(){
		return self.precio() == self.valorAbonado()
	}
	
	method mensajeroQuePuedeLlevar(){
		return mensajeros.filter({m => m.dejaPasar()})
	}
		
	
}

object paqueteOriginal {
	
	method destinos(){
		
	}
	
	method puedeSerEnviado(){
	
	}
	
	method mensajeroQuePuedeLlevar(){
	
	}
	
	method precio(){
		return 50
	}
}
