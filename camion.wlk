object camion {
    const carga=[]



    method estaExcedido()=self.peso()>2500
    method puedeCircular(nivelDePeligrosidad) = not self.estaExcedido() and self.cargaConPeligrosidadSuperiorA(nivelDePeligrosidad).isEmpty()
    method contieneAlgoConPesoEntre(maximo,minimo) = carga.any({a=>a.peso().between(minimo, maximo )})

}