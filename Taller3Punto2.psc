//Realizar figura con ciclo Mientras - Hacer
Proceso Taller3Punto2
	Definir filas Como Entero;
	Definir espacios Como Entero;
	Definir asteriscos Como Entero;
	filas <- 1;
	espacios <- 10;
	asteriscos <- 1;
	Mientras filas <= 10 Hacer
		Mientras espacios > asteriscos Hacer //Escribo espacios a medida que los asteriscos van aumentando
			Escribir Sin Saltar " ";
			espacios <- espacios - 1;
		FinMientras
		Mientras asteriscos <= filas Hacer //Escribo * a medida que las filas van aumentando
			Escribir Sin Saltar "*";
			asteriscos <- asteriscos + 1;
		FinMientras
		espacios <- 11 - asteriscos;
		asteriscos <- 1;
		filas <- filas + 1;
		Escribir "";
	FinMientras
FinProceso
