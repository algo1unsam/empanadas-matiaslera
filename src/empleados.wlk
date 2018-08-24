object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	var dineroTotal = 0

	method sueldo() {
		return 15000
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		dineroTotal += sueldo
	}

	method totalCobrado() = dineroTotal

}

object baigorria {

	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dineroTotal
	var deuda

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() {
		dineroTotal = cantidadEmpanadasVendidas * montoPorEmpanada
	}

	method cobrarSueldo() {
		dineroTotal -= deuda
	}

	method totalDinero() = dineroTotal

	method totalDeuda() = deuda

	method gastar(cuanto) {
		if (cuanto > dineroTotal) deuda += cuanto
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

// se rompe el codigo porque los objetos no tiene el metodo "COBRAR SUELDO"
}

