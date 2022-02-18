//Facturación de productos de la Droguería Mi Salud a sus clientes.
Proceso Taller2Punto5
	//Definición de variables
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
	
	//La Droguería Mi Salud solo posee estos productos:
	producto1 <- "Acetaminofén"; precioProducto1 <- 900;
	producto2 <- "Aspirina"; precioProducto2 <- 1200;
	producto3 <- "Suero"; precioProducto3 <- 5600;
	producto4 <- "Alcohol"; precioProducto4 <- 3200;
	
	Escribir "Bienvenido a la Droguería Mi Salud, favor indicarme su nombre para proceder con la facturaciónd el producto: ";
	leer nombreCliente;
	Escribir "Elija una opción:";
	Escribir "1. Comprar producto";
	Escribir "2. Consulta de precio por producto";
	Escribir "3. Devolución";
	leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Qué producto desea comprar?";
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
			Escribir "¿El producto adquirido presenta algún problema? (S/N)";
			Leer problema;
			Si problema = "S" Entonces
				Escribir "Devolución aceptada por la droguería Mi Salud";
			SiNo
				Escribir "Devolución rechazada por la droguería Mi Salud";
			FinSi
		De Otro Modo:
			Escribir "Opción incorrecta";
	FinSegun
	
	Escribir "Muchas gracias por haber asistido a la droguería Mi Salud, felíz día!!!";

FinProceso


