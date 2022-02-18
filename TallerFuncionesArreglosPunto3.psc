SubProceso numPrimo ()
	Definir num, i, j, k, v_primo Como Entero;
	Definir primo Como Logico;
	Dimension v_primo[170]; //Hay casi 170 n�meros primos de 1 a 1000.
	i <- 0;
	
	Para num <- 2 Hasta 1000 Con Paso 1 Hacer
		Si num = 2 Entonces
			v_primo[i] <- num; //El 2 es primo si o si
			i <- i + 1;
		SiNo
			Si num > 2 & num mod 2 = 0 Entonces
				//Escribir Sin Saltar ""; //Hay m�s procesamiento imprimiendo algo en pantalla que asignarle un valor a una variable.
				k <- 0;
			SiNo
				primo <- Verdadero; //Si no encuentro m�s divisores del n�mero actual, el n�mero es primo.
				Para j <- 3 Hasta num - 1 Con Paso 1 Hacer
					Si num mod j = 0 Entonces
						primo <- Falso; //Si encuentro m�s divisores del n�mero actual, el n�mero NO es primo.
					SiNo
						//Escribir Sin Saltar ""; //Hay m�s procesamiento imprimiendo algo en pantalla que asignarle un valor a una variable.
						k <- 0;
					FinSi
				FinPara
				Si primo = Verdadero Entonces
					v_primo[i] <- num; //Si no encuentro m�s divisores del n�mero actual, el n�mero es primo.
					i <- i + 1;
				SiNo
					//Escribir Sin Saltar ""; //Hay m�s procesamiento imprimiendo algo en pantalla que asignarle un valor a una variable.
					k <- 0;
				FinSi
			FinSi
		FinSi
		Limpiar Pantalla;
		Escribir "Calculando n�meros primos de 1 a 1000";
		Escribir "Progreso: ", num / 1000 * 100, "%"; //Progreso del c�lculo, verificar que pasa si imprimo espacios.
	FinPara
	Limpiar Pantalla;
	Escribir "Completado!";
	Escribir "N�meros primos del 1 al 1000:";
	Para k <- 0 Hasta i - 1 Con Paso 1 Hacer
		Escribir Sin Saltar v_primo[k], ", "; //Todos los numeros primos del 1 al 1000 fueron guardados en el vector v_primo
	FinPara
	Escribir "";
	Escribir "Se encontraron ", i , " n�meros primos entre 1 y 1000";
FinSubProceso

//Punto 3, taller de arreglos usando funciones, imprimir los n�meros primos del 1 al 1000.
//El resultado debe ser buscado de forma matem�tica.
Proceso TallerFuncionesArreglosPunto3
	numPrimo();
FinProceso
