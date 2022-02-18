//Menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo
Proceso Taller3Punto5
	Definir control Como Logico;
	Definir opcion Como Entero;
	control <- Verdadero;
	Mientras control = Verdadero Hacer
		Escribir "Menú de usuario";
		Escribir "1. Captura nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Se captura un nombre";
			2:
				Escribir "Se saluda la persona";
			3:
				control <- Falso; //Cuando el usuario ingresa el valor de 3 se sale del ciclo Segun Hacer
			De Otro Modo:
				Escribir "Opción inválida, ingrese un número de 1 a 3";
		FinSegun
	FinMientras
FinProceso
