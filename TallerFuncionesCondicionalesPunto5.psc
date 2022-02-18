//Punto 5 condicionales usando funciones, facturaci�n de productos de la Droguer�a Mi Salud a sus clientes.
SubProceso opc <- Menu ()
	Definir opc como Entero;
	Escribir "Elija una opci�n:";
	Escribir "1. Comprar producto";
	Escribir "2. Consulta de precio por producto";
	Escribir "3. Devoluci�n";
	Leer opc;
	Limpiar Pantalla;
FinSubProceso

SubProceso Compra ( p1, p2, p3, p4, nc )
	Definir pc Como Caracter;
	Escribir "Qu� producto desea comprar?";
	Escribir p1;
	Escribir p2;
	Escribir p3;
	Escribir p4;
	Leer pc;
	Si pc = p1 | pc = p2 | pc = p3 | pc = p4 Entonces
		Escribir "El producto se encuentra disponible!";
		Escribir  pc, " ha sido adquirido por ", nc, "!";
	SiNo
		Escribir "El producto ", pc, " no se encuentra disponible!";
	FinSi
FinSubProceso

SubProceso MostrarProductos (p1, p2, p3, p4, pp1, pp2, pp3, pp4)
	Escribir "Precios de los productos:";
	Escribir p1, ": $", pp1;
	Escribir p2, ": $", pp2;
	Escribir p3, ": $", pp3;
	Escribir p4, ": $", pp4;
FinSubProceso

SubProceso ProductoProblema ()
	Definir problema Como Caracter;
	Escribir "�El producto adquirido presenta alg�n problema? (S/N)";
	Leer problema;
	Si problema = "S" | problema = "s" Entonces
		Escribir "Devoluci�n aceptada por la droguer�a Mi Salud";
	SiNo
		Escribir "Devoluci�n rechazada por la droguer�a Mi Salud";
FinSi
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto5
	//Definici�n de variables
	Definir producto1, producto2, producto3, producto4, nombreCliente Como Caracter;
	Definir precioProducto1, precioProducto2, precioProducto3, precioProducto4, opcion Como Entero;
	
	//La Droguer�a Mi Salud solo posee estos productos:
	producto1 <- "Acetaminof�n"; precioProducto1 <- 900;
	producto2 <- "Aspirina"; precioProducto2 <- 1200;
	producto3 <- "Suero"; precioProducto3 <- 5600;
	producto4 <- "Alcohol"; precioProducto4 <- 3200;
	
	Escribir "Bienvenido a la Droguer�a Mi Salud, favor indicarme su nombre para proceder con la facturaci�nd el producto: ";
	leer nombreCliente;
	
	opcion <- Menu();
	Segun opcion Hacer
		1:
			Compra(producto1, producto2, producto3, producto4, nombreCliente);
		2:
			MostrarProductos(producto1, producto2, producto3, producto4, precioProducto1, precioProducto2, precioProducto3, precioProducto4);
		3:
			ProductoProblema();
		De Otro Modo:
			Escribir "Opci�n incorrecta";
	FinSegun
	
	Escribir "Muchas gracias por haber asistido a la droguer�a Mi Salud, fel�z d�a!!!";

FinProceso


