Proceso TallerArreglosPunto5GJOH
	Definir fila, columna, resultado Como Entero;
	Definir texto_filas, control Como Caracter;
	Dimension resultado[10,10];
	
	control <- "Y";
	
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			resultado[fila,columna] <- (columna + 1) * (fila + 1); //C�lculo del resultado de la multiplicaci�n en la matriz bidimensional resultado.
		FinPara
	FinPara
	
	Mientras control = "Y" Hacer //Se puede repetir la multiplicaci�n.
		
		//*************************+IMPRESI�N DEL CUADRO DE MULTIPLICACI�N********************************
		texto_filas <- "FILAS";
		Escribir "                                 Columnas";
		Escribir Sin Saltar "           ";
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			Escribir Sin Saltar columna, "     ";
		FinPara
		Escribir "";
		Escribir "-------------------------------------------------------------------------";
		Para fila <- 0 Hasta 9 Con Paso 1 Hacer
			Si fila > 1 & fila < 7 Entonces
				Escribir Sin Saltar Subcadena(texto_filas,fila - 2,fila - 2);
			SiNo
				Escribir Sin Saltar " ";
			FinSi
			
			Escribir Sin Saltar "  ", fila, "  |";
			
			Para columna <- 0 Hasta 9 Con Paso 1 Hacer
				Si fila < 9 Entonces
					Escribir Sin Saltar "   ", columna + 1, "x", fila + 1;
				SiNo
					Escribir Sin Saltar "  ", columna + 1, "x", fila + 1;
				FinSi
			FinPara
			Escribir "";
		FinPara
		Escribir "";
		Escribir "Ingrese la fila de la cual desea ver el resultado:";
		Leer fila;
		Escribir "Ingrese columna de la cual desea ver el resultado:";
		Leer columna;
		Escribir "El resultado es: ", resultado[fila,columna];
		Escribir "�Desea realizar otra multiplicaci�n (Y/N):";
		Leer control;
		Si control = "y" Entonces //El usuario decide si quiere realizar la multiplicaci�n de nuevo ingresando "y" o "Y"
			control <- "Y";
			Limpiar Pantalla;
		SiNo
			control <- "X";
		FinSi
	FinMientras
FinProceso