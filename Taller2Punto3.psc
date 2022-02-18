Proceso Taller2Punto3
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad Como Entero;
	Escribir "Favor ingresar el nombre de la persona: "	;
	Leer nombre;
	Escribir "Favor ingresar los apellidos de la persona: ";
	leer apellidos;
	Escribir "Favor ingresar edad de la persona: ";
	Leer edad;
	Si edad >= 18 Entonces
		Escribir nombre, " ", apellidos, " usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir nombre, " ", apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
FinProceso
