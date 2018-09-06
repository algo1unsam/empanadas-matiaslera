object gimenez {

	var property sueldo = 15000
	var dineroTotal = 0

	method cobrarSueldo() {
		dineroTotal += sueldo
	}

	method totalCobrado() = dineroTotal

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var deuda = 0
	var property dinero = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() {
		return cantidadEmpanadasVendidas * montoPorEmpanada
	}

	method cobrarSueldo() {
		dinero += self.sueldo()
		self.pagarDeuda()
	}

	method pagarDeuda() {
		if (dinero > deuda) {
			dinero -= deuda
			deuda = 0
		} else {
			deuda -= dinero
			dinero = 0
		}
	}

	method totalDinero() = dinero

	method totalDeuda() = deuda

	method gastar(monto) {
		if (dinero > monto) {
			dinero -= monto
		} else {
			deuda -= dinero
			dinero = 0
			deuda += monto
			// acá te agregué las llaves porque no quedaba claro
		}
	}

}

object galvan {

	var property dinero = 300000

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

// se rompe el codigo porque los objetos no tiene el metodo "COBRAR SUELDO"
}

