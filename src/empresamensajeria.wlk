import example.*
import destinos.*
import paquetes.*

object empresaMensajeria{
	const mensajeros = []
	const destino = []
	const paquetesPendientes = []
    const paquetesEnviados =[]
    
     method paquetesPendientes(){
    	return paquetesPendientes
    }
    method paquetesEnviados(){
    	return paquetesEnviados
    }
    method agregarPaquetePendiente(unPaquete){
    	return paquetesPendientes.add(unPaquete)
    }
    method agregarPaqueteEnviados(unPaquete){
    	return paquetesEnviados.add(unPaquete)
    }
    
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
	
	method puedeSerEntregado(){
		return mensajeros.any({m => m.puedePasar()})
	}
	
	method puedeLlevarUnPaqueteDado(){
		return mensajeros.filter({m => m.puedePasar()})
	}
	
	method tieneSobrepeso(){
		return mensajeros.sum({m => m.peso()}) > 500
	}
	
	
 
	method enviarPaquete(unPaquete){
		return
        if(self.puedeSerEntregado()){
            self.agregarPaqueteEnviados(unPaquete)
        }
        else{
            self.agregarPaquetePendiente(unPaquete)
        }
    }
    
    method totalGanadoPaquetesEnviados(){
    	return paquetesEnviados.sum({paquete => paquete.precio()}) 
    }
    
    method enviarTodosLosPaquetes(paquetes){
    	return paquetesEnviados.addAll(paquetes.asSet())
    }
    
    method enviarPaqueteMasCaro(){
    	return self.enviarPaquete(paquetesPendientes.max({paquete => paquete.precio()}))
    }
	
	
}
