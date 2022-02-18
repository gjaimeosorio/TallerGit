//Punto 1 condicionales usando funciones, preguntar si es mayor de edad.
SubProceso mayor_menor_edad ()
	Definir edad Como Entero;
	Escribir "Favor ingresar edad de la persona: ";
	Leer edad;
	Si edad >= 18 Entonces
		Escribir "Usted es mayor de edad.";
	SiNo
		Escribir "Usted es menor de edad.";
	FinSi
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto1
	mayor_menor_edad();
FinProceso
