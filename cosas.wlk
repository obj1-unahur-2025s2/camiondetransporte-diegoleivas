object KnightRider {
    method peso() = 500
    method peligrosidad() = 10 
  
    
}
object Bumblebee {
    var esAuto= true
    method cambiarFormaActual() {
        esAuto=!esAuto
      
    }
    method formaAuto() = esAuto
    method peso() = 800
    method peligrosidad() = if(self.formaAuto()) 15 else 30

  
}

object Paquetedladrillos {
    var cantidadLadrilos =0
    method AgregarLadrillos(cantidad) {
        cantidadLadrilos+=cantidad      
    }
   method peligrosidad() =2 
   method peso() =cantidadLadrilos*2 
}

object arenaGranel {
    var peso =0
    method peligrosidad() = 1
    method cambiarPeso(unPeso) {
        peso=unPeso
      
    }
    method peso() =peso 

  
}

object bateriaAntiaerea {
    var misiles = false
    method activarMisiles() {
       misiles= !misiles
      }
     method tieneMisiles() =  misiles
     method peso() = if(self.tieneMisiles()) 300 else 200 
     method peligrosidad() = if(self.tieneMisiles())100 else 0
  
}

object contenedorPortuario {
    const cosas =[]
    method agregarCosas(unaCosa) {
        cosas.add(unaCosa)
      
    }
     method pesoContenedor() =cosas.fold(0 ,{acum, b=>acum +b.peso()}) 
     method peso() =100 + self.pesoContenedor()
     method peligrosidad() = cosas.max({a=>a.peligrosidad()}).peligrosidad()
     method tieneContenido() { not cosas.isEmpty()
       
     }

  
}

object residuoRadioactivos {
    method peligrosidad() =200
    var property peso = 0



 
}

object name {
  
}


object auto {
  
}