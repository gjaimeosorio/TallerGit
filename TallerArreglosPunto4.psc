//Impresión de matriz bidimensional usando ciclos
Proceso TallerArreglosPunto4GJOH
	Definir fila, columna, i Como Entero;
	Definir matriz Como Caracter; //La matriz será de tipo caracter para poder concatenarlo con un "0" si es menor a 9
	Definir inversorFilaPar Como Logico;
	Dimension matriz[4,5];
	
	i <- 0;
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Si i < 9 Entonces
				matriz[fila,columna] <- Concatenar("0",ConvertirATexto(i+1)); //Se quema en el código los valores de 1 a 9 precedidos del 0.
			SiNo
				matriz[fila,columna] <- ConvertirATexto(i+1); //Se quema en el código los valores de 10 al 25
			FinSi
			i <- i + 1;
		FinPara
	FinPara
	
	inversorFilaPar <- Falso;
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Si inversorFilaPar = Falso Entonces
			Para columna <- 0 Hasta 4 Con Paso 1 Hacer //Si la fila es impar, escribe los números de forma ascendente
					Escribir Sin Saltar matriz[fila,columna], " ";
					inversorFilaPar <- Verdadero;
			FinPara
		SiNo
			Para columna <- 4 Hasta 0 Con Paso -1 Hacer //Si la fila es impar, escribe los números de forma descendente
				Escribir Sin Saltar matriz[fila,columna], " ";
				inversorFilaPar <- Falso;
			FinPara
		FinSi
		Escribir "";
	FinPara
FinProceso
