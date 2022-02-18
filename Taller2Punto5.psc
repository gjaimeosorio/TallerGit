//Facturaci�n de productos de la Droguer�a Mi Salud a sus clientes.
Proceso Taller2Punto5
	//Definici�n de variables
	Definir nombreCliente Como Caracter;
	Definir opcion Como Entero;
	Definir productoCompra Como Caracter;
	Definir producto1 Como Caracter;
	Definir producto2 Como Caracter;
	Definir producto3 Como Caracter;
	Definir producto4 Como Caracter;
	Definir precioProducto1 Como Entero;
	Definir precioProducto2 Como Entero;
	Definir precioProducto3 Como Entero;
	Definir precioProducto4 Como Entero;
	Definir problema Como Caracter;
	
	//La Droguer�a Mi Salud solo posee estos productos:
	producto1 <- "Acetaminof�n"; precioProducto1 <- 900;
	producto2 <- "Aspirina"; precioProducto2 <- 1200;
	producto3 <- "Suero"; precioProducto3 <- 5600;
	producto4 <- "Alcohol"; precioProducto4 <- 3200;
	
	Escribir "Bienvenido a la Droguer�a Mi Salud, favor indicarme su nombre para proceder con la facturaci�nd el producto: ";
	leer nombreCliente;
	Escribir "Elija una opci�n:";
	Escribir "1. Comprar producto";
	Escribir "2. Consulta de precio por producto";
	Escribir "3. Devoluci�n";
	leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Qu� producto desea comprar?";
			Leer productoCompra;
			Si productoCompra = producto1 | productoCompra = producto2 | productoCompra = producto3 | productoCompra = producto4 Entonces
				Escribir "El producto se encuentra disponible!";
				Escribir  productoCompra, " ha sido adquirido por ", nombreCliente, "!";
			SiNo
				Escribir "El producto ", productoCompra, " no se encuentra disponible!";
			FinSi
		2:
			Escribir "Precios de los productos:";
			Escribir producto1, ": $", precioProducto1;
			Escribir producto2, ": $", precioProducto2;
			Escribir producto3, ": $", precioProducto3;
			Escribir producto4, ": $", precioProducto4;
		3:
			Escribir "�El producto adquirido presenta alg�n problema? (S/N)";
			Leer problema;
			Si problema = "S" Entonces
				Escribir "Devoluci�n aceptada por la droguer�a Mi Salud";
			SiNo
				Escribir "Devoluci�n rechazada por la droguer�a Mi Salud";
			FinSi
		De Otro Modo:
			Escribir "Opci�n incorrecta";
	FinSegun
	
	Escribir "Muchas gracias por haber asistido a la droguer�a Mi Salud, fel�z d�a!!!";

FinProceso


