//Punto 6 condicionales usando funciones, registro de los servicios generados por revisión técnica para motos de alto cilindraje en el taller "El Maquinista"

SubProceso inv <- InventarioMoto (m)
	Definir inv, opc Como Caracter;
	Escribir "¿La moto ", m, " presentó arreglos realizados por el mecánico? (S/N)";
	Leer opc;
	Si opc = "S" | opc = "s" Entonces
		Escribir "Favor escribir el inventario de arreglos realizado a la motocicleta ", m;
		Leer inv;
	SiNo
		inv <- "La moto no presentó arreglos, está en perfectas condiciones";
	FinSi
FinSubProceso

SubProceso obsMoto <- ObservacionesMoto (m)
	Definir obsMoto Como Caracter;
	Escribir "Favor ingresar las observaciones para la revisión de la motocicleta ", m,;
	Leer obsMoto;
FinSubProceso

SubProceso fecha <- FechaMoto (m)
	Definir fecha, tipo Como Caracter;
	Escribir "¿Es fecha de entrada o de salida? (E/S)";
	Leer tipo;
	Si tipo = "E" | tipo = "e" Entonces
		Escribir "Favor ingresar la fecha de ingreso al taller de la motocicleta ", m, " - [dd/mm/aaaa]:";
		Leer fecha;
	SiNo
		Escribir "Favor ingresar la fecha de salida del taller de la motocicleta ", m, " - [dd/mm/aaaa]:";
		Leer fecha;
	FinSi
FinSubProceso

SubProceso nomClie <- nombreCliente ()
	Definir nomClie Como Caracter;
	Escribir "Bienvenido al taller de motos El Maquinista, favor indicarme su nombre para procceder a registrar la revisión de su motocicleta de alto cilindraje: ";
	Leer nomClie;
FinSubProceso

SubProceso nomMoto <- Moto ()
	Definir nomMoto Como Caracter;
	Escribir "Ingrese la marca y modelo de moto";
	Leer nomMoto;
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto6
	//Definición de variables
	Definir nCliente, nMoto, fechaIngreso, fechaSalida, observacion, inventarioArreglos Como Caracter;		
	
	nCliente <- nombreCliente();
	nMoto <- Moto();
	fechaIngreso <- FechaMoto(nMoto);
	observacion <- ObservacionesMoto(nMoto);
	fechaSalida <- FechaMoto(nMoto);
	inventarioArreglos <- InventarioMoto(nMoto);	
	Limpiar Pantalla;	
	Escribir "La motocicleta ", nMoto, " fue ingresada el ", fechaIngreso, " con la(s) observacion(es): ", observacion, ". La motocicleta fue revisada y entregada a ", nCliente, " el día ", fechaSalida, " y fue diagnósticada con: ", inventarioArreglos;
	Escribir "";
	Escribir "Gracias ", nCliente, " por visitar el taller El Maquinista, vuelva pronto!";
FinProceso


