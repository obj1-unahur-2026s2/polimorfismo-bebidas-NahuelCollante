object tito {
  var pesoActual = 70
  var bebidaActual = nada 
  var dosisConsumida = nada

  method cambiarPeso(nuevoPeso) {
    pesoActual = nuevoPeso
  }

  method peso() {
    return pesoActual
  }

  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    dosisConsumida = cantidad
  }

  method velocidad() {
    return bebidaActual.rendimiento(dosisConsumida, self) * 490 / pesoActual
  }

  method esFeliz() {
    return self.velocidad() >= 7
  }
}

object pepe {
  var pesoActual = 80
  var edad = 30 
  var bebidaActual = nada 
  var dosisConsumida = nada

  method cambiarPeso(nuevoPeso) {
    pesoActual = nuevoPeso
  }

  method peso() {
    return pesoActual
  }

  method cumplirAnios() {
    edad = edad + 1
  }



  method consumir(cantidad, bebida) {
    bebidaActual = bebida
    dosisConsumida = cantidad
  }

  method velocidad() {
    return if (edad <= 30) bebidaActual.rendimiento(dosisConsumida, self) * 490 / pesoActual else bebidaActual.rendimiento(dosisConsumida, self) * 490 / pesoActual - 10
  }
}

object whisky {
  method rendimiento(dosisConsumida, deportista) {
    return 0.9 ** dosisConsumida
  }
}

object terere {
  method rendimiento(dosisConsumida, deportista) {
    return (0.1 * dosisConsumida).max(1)
  }
}

object cianuro {
  method rendimiento(dosisConsumida, deportista) {
    return if (deportista.peso()<=70) 0 else deportista.peso() * 0.01 + dosisConsumida 
  }
}

object nada {
  method rendimiento(dosisConsumida, deportista) {
    return "nada" 
  }
}
