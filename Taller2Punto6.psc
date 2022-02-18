//Registro de los servicios generados por revisión técnica para motos de alto cilindraje en el taller "El Maquinista"
Proceso Taller2Punto6
	//Definición de variables
	Definir nombreCliente Como Caracter;
	Definir productoCompra Como Caracter;
	Definir moto Como Caracter;
	Definir fechaIngresoMoto Como Caracter;
	Definir fechaSalidaMoto Como Caracter;
	Definir observacionesMoto Como Caracter;
	Definir arreglosMoto Como Caracter;
	Definir inventarioArreglosMoto Como Caracter;
	
	Escribir "Bienvenido al taller de motos El Maquinista, favor indicarme su nombre para procceder a registrar la revisión de su motocicleta de alto cilindraje: ";
	Leer nombreCliente;
	Escribir "Ingrese la marca y modelo de moto";
	Leer moto;
	Escribir "Favor ingresar la fecha de ingreso al taller de la motocicleta ", moto, " - [dd/mm/aaaa]:";
	Leer fechaIngresoMoto;
	Escribir "Favor ingresar las observaciones para la revisión de la motocicleta ", moto,;
	Leer observacionesMoto;
	Escribir "Favor ingresar la fecha de salida del taller de la motocicleta ", moto, " - [dd/mm/aaaa]:";
	Leer fechaSalidaMoto;
	Escribir "¿La moto ", moto, " presentó arreglos realizados por el mecánico? (S/N)";
	Leer arreglosMoto;
	Si arreglosMoto = "S" Entonces
		Escribir "Favor escribir el inventario de arreglos realizado a la motocicleta ", moto;
		Leer inventarioArreglosMoto;
	SiNo
		inventarioArreglosMoto <- "La moto no presentó arreglos, está en perfectas condiciones";
	FinSi
	
	Limpiar Pantalla;
	
	Escribir "La motocicleta ", moto, " fue ingresada el ", fechaIngresoMoto, " con la(s) observacion(es): ", observacionesMoto, ". La motocicleta fue revisada y entregada a ", nombreCliente, " el día ", fechaSalidaMoto, " y fue diagnósticada con: ", inventarioArreglosMoto;
	Escribir "";
	Escribir "Gracias ", nombreCliente, " por visitar el taller El Maquinista, vuelva pronto!";
	
FinProceso


