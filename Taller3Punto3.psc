//parte del tronco es repetitivo
SubProceso tronco (altura)
	Definir filas Como Entero;
	Definir espacios Como Entero;
	Definir asteriscos Como Entero;
	filas <- 1;
	espacios <- altura + 5;
	asteriscos <- 1;
	Repetir
		Repetir
			Escribir Sin Saltar " "; //Escribo menos espacios a medida que salto de filas
			espacios <- espacios - 1;
		Hasta Que espacios < 0
		
		Repetir
			Escribir Sin Saltar "*"; //Escribo asteriscos en cada fila de forma impar (2*filas-1 representa un número impar siempre)
			asteriscos <- asteriscos + 1;
		Hasta Que asteriscos > 2*filas-1+2
		Escribir "";
		filas <- filas + 1;
		espacios <- altura +6 - asteriscos + filas;
		asteriscos <- 1;
	Hasta Que filas > altura
FinSubProceso

//las hojas del arbolito es repetitivo
SubProceso arbolito (altura)
	Definir filas Como Entero;
	Definir espacios Como Entero;
	Definir asteriscos Como Entero;
	filas <- 1;
	espacios <- altura-1;
	asteriscos <- 1;
	Repetir
		Repetir
			Escribir Sin Saltar " "; //Escribo menos espacios a medida que salto de filas
			espacios <- espacios - 1;
		Hasta Que espacios < 0
		
		Repetir
			Escribir Sin Saltar "*"; //Escribo asteriscos en cada fila de forma impar (2*filas-1 representa un número impar siempre)
			asteriscos <- asteriscos + 1;
		Hasta Que asteriscos > 2*filas-1
		Escribir "";
		filas <- filas + 1;
		Si filas > 2 Entonces
			espacios <- altura - 2 - asteriscos + filas;
		SiNo
			espacios <- altura - asteriscos;
		FinSi
		asteriscos <- 1;
	Hasta Que filas > altura
FinSubProceso

//Realizar figura (arbolito) con ciclo Hasta Que
Proceso Taller3Punto3
	arbolito(11); //las hojas del arbolito es repetitivo
	Escribir "         ***"; //Parte del tronco no es repetitivo
	tronco(3); //parte del tronco es repetitivo
FinProceso