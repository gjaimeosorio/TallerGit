SubProceso par <- Pares ( v_par Por Referencia, vector)
	Definir i, par Como Entero;
	i <- 0;
	par <- 0;
	Mientras i < 20  Hacer //Ciclo diferente para llenar un vector con los números pares y otro con los impares
		Si vector[i] mod 2 = 0 Entonces
			v_par[par] <- vector[i];
			par <- par + 1;
		FinSi
		i <- i + 1; 
	FinMientras
FinSubProceso

SubProceso impar <- Impares ( v_impar Por Referencia, vector)
	Definir i, impar Como Entero;
	i <- 0;
	impar <- 0;
	Mientras i < 20  Hacer //Ciclo diferente para llenar un vector con los números pares y otro con los impares
		Si vector[i] mod 2 <> 0 Entonces
			v_impar[impar] <- vector[i];
			impar <- impar + 1;
		FinSi
		i <- i + 1; 
	FinMientras
FinSubProceso

SubProceso VectorAzar ( vector Por Referencia )
	Definir i Como Entero;
	Para i <- 0 Hasta 19 Con Paso 1 Hacer //Ciclo Para, con el fin de crear el arreglo de 20 posiciones con números aleatorios del 1 al 100
		vector[i] <- azar(100) + 1;
	FinPara
FinSubProceso

//Punto 2, taller de arreglos usando funciones, arreglo de números enteros de 20 posiciones, el cual, debe ser llenado con números aleatorios entre 1 y 100
//Luego mostrar los numeros pares e impares con un ciclo diferente
Proceso TallerFuncionesArreglosPunto2
	Definir i, par, impar, vector, v_par, v_impar Como Entero;
	Dimension vector[20], v_par[20], v_impar[20];	
	
	i <- 0;
	VectorAzar(vector);
	par <- Pares(v_par,vector);
	impar <- Impares(v_impar,vector);
	Escribir Sin Saltar "Números pares: "; //Muestro números pares
	Repetir //Ciclo
		Escribir Sin Saltar v_par[i];
		i <- i + 1;
		Si i < par Entonces
			Escribir Sin Saltar ",";
		SiNo
			Escribir "";
		FinSi
	Hasta Que i >= par
	
	i <- 0;
	Escribir Sin Saltar "Números impares: "; //Muestro números impares
	Repetir
		Escribir Sin Saltar v_impar[i];
		i <- i + 1;
		Si i < impar Entonces
			Escribir Sin Saltar ",";
		SiNo
			Escribir "";
		FinSi
	Hasta Que i >= impar
	
FinProceso