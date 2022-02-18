//Registro de los pedidos de los clientes en cuanto a las tortas que realiza el pastelero Don Carlos
Proceso Taller2Punto8
	//Definición de variables
	Definir nombreCliente Como Caracter;
	Definir opcion Como Entero;
	Definir sabor Como Caracter;
	Definir saborDisponible Como Caracter;
	Definir cantidad Como Entero;
	Definir cantidadDisponible Como Caracter;
	Definir decoracion Como Caracter;
	Definir decoracionDisponible Como Caracter;
	
	Escribir "Favor ingresar el nombre del cliente:";
	Leer nombreCliente;
	
	//La pastelería de Don Carlos tiene 3 sabores, 3 tamaños y 3 tipos de decoraciones.
	Escribir "Elija el sabor de su torta:";
	Escribir "1. Fresa";
	Escribir "2. Chocolate";
	Escribir "3. Maracuyá";
	leer opcion;
	Segun opcion Hacer
		1:
			sabor <- "fresa";
			saborDisponible <- "chocolate y maracuyá";
		2:
			sabor <- "chocolate";
			saborDisponible <- "fresa y maracuyá";
		3:
			sabor <- "Maracuyá";
			saborDisponible <- "fresa y chocolate";
		De Otro Modo:
			Escribir "No ha seleccionado una opción válida";
	FinSegun
	
	Limpiar Pantalla;
	
	Escribir "Elija el mamaño de su torta:";
	Escribir "1. 20 porciones";
	Escribir "2. 40 porciones";
	Escribir "3. 60 porciones";
	leer opcion;
	Segun opcion Hacer
		1:
			cantidad <- 20;
			cantidadDisponible <- "40 y 60 porciones";
		2:
			cantidad <- 40;
			cantidadDisponible <- "20 y 60 porciones";
		3:
			cantidad <- 60;
			cantidadDisponible <- "20 y 40 porciones";
		De Otro Modo:
			Escribir "No ha seleccionado una opción válida";
	FinSegun
	
	
	Limpiar Pantalla;
	
	Escribir "Elija la decoración de su torta:";
	Escribir "1. Merengue italiano";
	Escribir "2. Merengue suizo";
	Escribir "3. Merengue francés";
	leer opcion;
	Segun opcion Hacer
		1:
			decoracion <- "merengue italiano";
			decoracionDisponible <- "merengue suizo y francés";
		2:
			decoracion <- "merengue suizo";
			decoracionDisponible <- "merengue italiano y francés";
		3:
			decoracion <- "merengue francés";
			decoracionDisponible <- "merengue italiano y suizo";
		De Otro Modo:
			Escribir "No ha seleccionado una opción válida";
	FinSegun
	
	Limpiar Pantalla;
	
	Escribir "La torta registrada es de sabor: ", sabor, ", porciones: ", cantidad, " y el tipo de decoración fue: ", decoracion;
	Escribir "La disponibilidad de sabores es: ", saborDisponible, ", tamaños disponibles de: ", cantidadDisponible, " y decoraciones disponibles: ", decoracionDisponible;
	Escribir "Gracias ", nombreCliente, " por haber registrado el pedido en la pastelería Don Carlos."; 
	
FinProceso


