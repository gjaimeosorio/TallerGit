//Punto 8 condicionales usando funciones, registro de los pedidos de los clientes en cuanto a las tortas que realiza el pastelero Don Carlos
SubProceso sabor <- SaborPastel ()
	//La pastelería de Don Carlos tiene 3 sabores, 3 tamaños y 3 tipos de decoraciones.
	Definir opc Como Entero;
	Definir sabor Como Caracter;
	Escribir "Elija el sabor de su torta:";
	Escribir "1. Fresa";
	Escribir "2. Chocolate";
	Escribir "3. Maracuyá";
	leer opc;
	Segun opc Hacer
		1:
			sabor <- "fresa, sabores disponibles: chocolate y maracuyá";
		2:
			sabor <- "chocolate, sabores disponibles: fresa y maracuyá";
		3:
			sabor <- "Maracuyá, sabores disponibles: fresa y chocolate";
		De Otro Modo:
			Escribir "No ha seleccionado una opción válida";
	FinSegun
FinSubProceso

SubProceso tam <- TamanhoPastel ()
	Definir tam Como Caracter;
	Definir opc Como Entero;
	Escribir "Elija el mamaño de su torta:";
	Escribir "1. 20 porciones";
	Escribir "2. 40 porciones";
	Escribir "3. 60 porciones";
	leer opc;
	Segun opc Hacer
		1:
			tam <- "20, cantidades disponibles: 40 y 60 porciones";
		2:
			tam <- "40, cantidades disponibles: 20 y 60 porciones";
		3:
			tam <- "60, cantidades disponibles: 20 y 40 porciones";
		De Otro Modo:
			Escribir "No ha seleccionado una opción válida";
	FinSegun
FinSubProceso

SubProceso deco <- DecoracionPastel ()
	Definir deco Como Caracter;
	Definir opc Como Entero;
	Escribir "Elija la decoración de su torta:";
	Escribir "1. Merengue italiano";
	Escribir "2. Merengue suizo";
	Escribir "3. Merengue francés";
	leer opc;
	Segun opc Hacer
		1:
			deco <- "merengue italiano, decoraciones disponibles: merengue suizo y francés";
		2:
			deco <- "merengue suizo, decoraciones disponibles: merengue italiano y francés";
		3:
			deco <- "merengue francés, decoraciones disponibles: merengue italiano y suizo";
		De Otro Modo:
			Escribir "No ha seleccionado una opción válida";
	FinSegun
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto8
	//Definición de variables
	Definir nombreCliente, sabor, cantidad, decoracion Como Caracter;
	
	Escribir "Favor ingresar el nombre del cliente:";
	Leer nombreCliente;
	
	sabor <- SaborPastel();
	Limpiar Pantalla;
	
	cantidad <- TamanhoPastel();
	Limpiar Pantalla;
	
	decoracion <- DecoracionPastel();
	Limpiar Pantalla;
	
	Escribir "La torta registrada es de sabor: ", sabor, ", porciones: ", cantidad, " y el tipo de decoración fue: ", decoracion;
	Escribir "Gracias ", nombreCliente, " por haber registrado el pedido en la pastelería Don Carlos."; 
	
FinProceso


