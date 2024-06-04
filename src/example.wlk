import destinos.*
import empresamensajeria.*

object roberto{
	var peso = 50
	var property acoplado
	
	method peso(){
		return peso
	}
	
	method viajaEnBici(){
		return peso + 5
	}
	
	method viajaEnCamion(){
		return peso +(self.acoplado() * 500)
	}
	
	method puedeLlamar(){
		return false
	}
	
	method puedePasar(){
		return puente.dejaPasar(self) or matrix.dejaPasar(self)
	}
	
}

object norris{
    const peso = 80
    method viajaEnBici(){}
    method viajaEnCamion(){}
    method puedeLlamar(){
        return true 
    }
    method peso(){
		return peso
	}
	method puedePasar(){
		return puente.dejaPasar(self) or matrix.dejaPasar(self)
	}
}



object neo {
    const peso = 0
    var property tieneCredito = true
    method viajaEnBici(){
    	
    }
    method viajaEnCamion(){
    	
    }
    method puedeLlamar(){
    	return
         if(tieneCredito){
         	 tieneCredito
         } else false
    }
    method peso(){
		return peso
	}
	method puedePasar(){
		return puente.dejaPasar(self) or matrix.dejaPasar(self)
	}
	
	
}

object nuevoMensajero{
	const peso = 80
    method viajaEnBici(){}
    method viajaEnCamion(){}
    method puedeLlamar(){
        return true 
    }
    method peso(){
		return peso
	}
	method puedePasar(){
		return puente.dejaPasar(self) or matrix.dejaPasar(self)
	}
}
