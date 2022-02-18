//Punto 3 condicionales usando funciones, preguntar edad para entrar a la fiesta
SubProceso nombre <- ObtenerNombre ()
	Definir nombre Como Caracter;
	Escribir "Favor ingresar el nombre de la persona: "	;
	Leer nombre;
FinSubProceso

SubProceso apellidos <- ObtenerApellidos ()
	Definir apellidos Como Caracter;
	Escribir "Favor ingresar los apellidos de la persona: ";
	leer apellidos;
FinSubProceso

SubProceso PermisoFiesta (nombre , apellidos)
	Definir edad Como Entero;
	Escribir "Favor ingresar edad de la persona: ";
	Leer edad;
	Si edad >= 18 Entonces
		Escribir nombre, " ", apellidos, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir nombre, " ", apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto3
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	nombre <- ObtenerNombre();
	apellidos <- ObtenerApellidos();
	PermisoFiesta(nombre, apellidos);
FinProceso
